/*
 * Copyright 2001-2002,2004 The Apache Software Foundation.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *      http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/*
 * $Id: DOMEntityReferenceImpl.cpp 176280 2005-01-07 15:32:34Z amassari $
 */

#include "xercesc/dom/impl/DOMDocumentImpl.hpp"
#include "xercesc/dom/impl/DOMDocumentTypeImpl.hpp"
#include "xercesc/dom/impl/DOMEntityImpl.hpp"
#include "xercesc/dom/impl/DOMEntityReferenceImpl.hpp"

#include <xercesc/dom/DOMException.hpp>
#include <xercesc/dom/DOMNode.hpp>
#include <xercesc/dom/DOMNamedNodeMap.hpp>

XERCES_CPP_NAMESPACE_BEGIN

DOMEntityReferenceImpl::DOMEntityReferenceImpl(DOMDocument *ownerDoc,
                                         const XMLCh *entityName)
    : fNode(ownerDoc), fParent(ownerDoc), fBaseURI(0)
{
    fName = ((DOMDocumentImpl *)getOwnerDocument())->getPooledString(entityName);
    // EntityReference behaves as a read-only node, since its contents
    // reflect the Entity it refers to -- but see setNodeName().
    //retrieve the corresponding entity content

    if (ownerDoc) {
        if (ownerDoc->getDoctype()) {
            if (ownerDoc->getDoctype()->getEntities()) {
                DOMEntityImpl* entity = (DOMEntityImpl*)ownerDoc->getDoctype()->getEntities()->getNamedItem(entityName);
                if (entity) {
                    fBaseURI = entity->getBaseURI();
                    DOMEntityReference* refEntity = entity->getEntityRef();
                    if (refEntity) {
                        fParent.cloneChildren(refEntity);
                    }
                }
            }
        }
    }

    fNode.setReadOnly(true, true);
}


DOMEntityReferenceImpl::DOMEntityReferenceImpl(DOMDocument *ownerDoc,
                                         const XMLCh *entityName,
                                         bool cloneChild)
    : fNode(ownerDoc), fParent(ownerDoc), fBaseURI(0)
{
    fName = ((DOMDocumentImpl *)getOwnerDocument())->getPooledString(entityName);
    // EntityReference behaves as a read-only node, since its contents
    // reflect the Entity it refers to -- but see setNodeName().
    //retrieve the corresponding entity content

    if (ownerDoc) {
        if (ownerDoc->getDoctype()) {
            if (ownerDoc->getDoctype()->getEntities()) {
                DOMEntityImpl* entity = (DOMEntityImpl*)ownerDoc->getDoctype()->getEntities()->getNamedItem(entityName);
                if (entity) {
                    fBaseURI = entity->getBaseURI();
                    if (cloneChild) {
                        DOMEntityReference* refEntity = entity->getEntityRef();
                        if (refEntity) {
                            fParent.cloneChildren(refEntity);
                        }
                    }
                }
            }
        }
    }

    fNode.setReadOnly(true, true);
}

DOMEntityReferenceImpl::DOMEntityReferenceImpl(const DOMEntityReferenceImpl &other,
                                         bool deep)
    : DOMEntityReference(other), 
      fNode(other.fNode), 
      fParent(other.fParent), 
      fChild(other.fChild), 
      fName(other.fName), 
      fBaseURI(other.fBaseURI)
{    
    if (deep)
        fParent.cloneChildren(&other);
    fNode.setReadOnly(true, true);
}



DOMEntityReferenceImpl::~DOMEntityReferenceImpl()
{
}

DOMNode *DOMEntityReferenceImpl::cloneNode(bool deep) const
{
    DOMNode* newNode = new (getOwnerDocument(), DOMDocumentImpl::ENTITY_REFERENCE_OBJECT) DOMEntityReferenceImpl(*this, deep);
    fNode.callUserDataHandlers(DOMUserDataHandler::NODE_CLONED, this, newNode);
    return newNode;
}


const XMLCh * DOMEntityReferenceImpl::getNodeName() const
{
    return fName;
}


short DOMEntityReferenceImpl::getNodeType() const {
    return DOMNode::ENTITY_REFERENCE_NODE;
}



/**
* EntityReferences never have a nodeValue.
* @throws DOMException(NO_MODIFICATION_ALLOWED_ERR)
*/
void DOMEntityReferenceImpl::setNodeValue(const XMLCh *x)
{
    fNode.setNodeValue(x);
}


/**
* EntityRef is already, and must be, a read-only node. Attempts to change
* that will throw a NO_MODIFICATION_ALLOWED_ERR DOMException.
* <P>
* If you want to alter its contents, edit the Entity definition.
*
* @param readOnly boolean
*/
void DOMEntityReferenceImpl::setReadOnly(bool readOnl,bool deep)
{
    if(((DOMDocumentImpl *)getOwnerDocument())->getErrorChecking() && readOnl==false)
        throw DOMException(DOMException::NO_MODIFICATION_ALLOWED_ERR, 0, GetDOMNodeMemoryManager);
    fNode.setReadOnly(readOnl,deep);
}


void DOMEntityReferenceImpl::release()
{
    if (fNode.isOwned() && !fNode.isToBeReleased())
        throw DOMException(DOMException::INVALID_ACCESS_ERR,0, GetDOMNodeMemoryManager);

    DOMDocumentImpl* doc = (DOMDocumentImpl*) getOwnerDocument();
    if (doc) {
        fNode.callUserDataHandlers(DOMUserDataHandler::NODE_DELETED, 0, 0);
        fParent.release();
        doc->release(this, DOMDocumentImpl::ENTITY_REFERENCE_OBJECT);
    }
    else {
        // shouldn't reach here
        throw DOMException(DOMException::INVALID_ACCESS_ERR,0, GetDOMNodeMemoryManager);
    }
}

const XMLCh* DOMEntityReferenceImpl::getBaseURI() const
{
    return fBaseURI;
}



//
//   Delegate functions from Node to the appropriate implementation.
//


           DOMNode*         DOMEntityReferenceImpl::appendChild(DOMNode *newChild)          {return fParent.appendChild (newChild); }
           DOMNamedNodeMap* DOMEntityReferenceImpl::getAttributes() const                   {return fNode.getAttributes (); }
           DOMNodeList*     DOMEntityReferenceImpl::getChildNodes() const                   {return fParent.getChildNodes (); }
           DOMNode*         DOMEntityReferenceImpl::getFirstChild() const                   {return fParent.getFirstChild (); }
           DOMNode*         DOMEntityReferenceImpl::getLastChild() const                    {return fParent.getLastChild (); }
     const XMLCh*           DOMEntityReferenceImpl::getLocalName() const                    {return fNode.getLocalName (); }
     const XMLCh*           DOMEntityReferenceImpl::getNamespaceURI() const                 {return fNode.getNamespaceURI (); }
           DOMNode*         DOMEntityReferenceImpl::getNextSibling() const                  {return fChild.getNextSibling (); }
     const XMLCh*           DOMEntityReferenceImpl::getNodeValue() const                    {return fNode.getNodeValue (); }
           DOMDocument*     DOMEntityReferenceImpl::getOwnerDocument() const                {return fParent.fOwnerDocument; }
     const XMLCh*           DOMEntityReferenceImpl::getPrefix() const                       {return fNode.getPrefix (); }
           DOMNode*         DOMEntityReferenceImpl::getParentNode() const                   {return fChild.getParentNode (this); }
           DOMNode*         DOMEntityReferenceImpl::getPreviousSibling() const              {return fChild.getPreviousSibling (this); }
           bool             DOMEntityReferenceImpl::hasChildNodes() const                   {return fParent.hasChildNodes (); }
           DOMNode*         DOMEntityReferenceImpl::insertBefore(DOMNode *newChild, DOMNode *refChild)
                                                                                            {return fParent.insertBefore (newChild, refChild); }
           void             DOMEntityReferenceImpl::normalize()                             {fParent.normalize (); }
           DOMNode*         DOMEntityReferenceImpl::removeChild(DOMNode *oldChild)          {return fParent.removeChild (oldChild); }
           DOMNode*         DOMEntityReferenceImpl::replaceChild(DOMNode *newChild, DOMNode *oldChild)
                                                                                            {return fParent.replaceChild (newChild, oldChild); }
           bool             DOMEntityReferenceImpl::isSupported(const XMLCh *feature, const XMLCh *version) const
                                                                                            {return fNode.isSupported (feature, version); }
           void             DOMEntityReferenceImpl::setPrefix(const XMLCh  *prefix)         {fNode.setPrefix(prefix); }
           bool             DOMEntityReferenceImpl::hasAttributes() const                   {return fNode.hasAttributes(); }
           bool             DOMEntityReferenceImpl::isSameNode(const DOMNode* other) const  {return fNode.isSameNode(other); }
           bool             DOMEntityReferenceImpl::isEqualNode(const DOMNode* arg) const   {return fParent.isEqualNode(arg); }
           void*            DOMEntityReferenceImpl::setUserData(const XMLCh* key, void* data, DOMUserDataHandler* handler)
                                                                                            {return fNode.setUserData(key, data, handler); }
           void*            DOMEntityReferenceImpl::getUserData(const XMLCh* key) const     {return fNode.getUserData(key); }
           short            DOMEntityReferenceImpl::compareTreePosition(const DOMNode* other) const {return fNode.compareTreePosition(other); }
           const XMLCh*     DOMEntityReferenceImpl::getTextContent() const                  {return fNode.getTextContent(); }
           void             DOMEntityReferenceImpl::setTextContent(const XMLCh* textContent){fNode.setTextContent(textContent); }
           const XMLCh*     DOMEntityReferenceImpl::lookupNamespacePrefix(const XMLCh* namespaceURI, bool useDefault) const  {return fNode.lookupNamespacePrefix(namespaceURI, useDefault); }
           bool             DOMEntityReferenceImpl::isDefaultNamespace(const XMLCh* namespaceURI) const {return fNode.isDefaultNamespace(namespaceURI); }
           const XMLCh*     DOMEntityReferenceImpl::lookupNamespaceURI(const XMLCh* prefix) const  {return fNode.lookupNamespaceURI(prefix); }
           DOMNode*         DOMEntityReferenceImpl::getInterface(const XMLCh* feature)      {return fNode.getInterface(feature); }

XERCES_CPP_NAMESPACE_END
