//---------------------------------------------------------------------------
//    $Id: fe_q_hierarchical.h 17866 2008-12-05 22:27:44Z bangerth $
//    Version: $Name$
//
//    Copyright (C) 2002, 2003, 2004, 2005, 2006 by the deal.II authors
//
//    This file is subject to QPL and may not be  distributed
//    without copyright and license information. Please refer
//    to the file deal.II/doc/license.html for the  text  and
//    further information on this license.
//
//---------------------------------------------------------------------------
#ifndef __deal2__fe_q_hierarchical_h
#define __deal2__fe_q_hierarchical_h

#include <base/config.h>
#include <base/tensor_product_polynomials.h>
#include <fe/fe_poly.h>

DEAL_II_NAMESPACE_OPEN

template <int dim, int spacedim> class MappingQ;


/*!@addtogroup fe */
/*@{*/

/**
 * Implementation of Hierarchical finite elements @p Qp that yield the
 * finite element space of continuous, piecewise polynomials of degree
 * @p p. This class is realized using tensor product polynomials
 * based on a hierarchical basis @p Hierarchical of the interval 
 * <tt>[0,1]</tt> which is suitable for building an @p hp tensor product 
 * finite element, if we assume that each element has a single degree.
 * 
 * There are not many differences between @p FE_Q_Hierarchical and 
 * @p FE_Q, except that we add a function @p embedding_dofs that takes 
 * a given integer @p q, between @p 1 and @p p, and 
 * returns the numbering of basis functions of the element of order 
 * @p q in basis of order @p p.  This function is 
 * useful if one wants to make calculations using the hierarchical
 * nature of these shape functions.
 *
 * The unit support points now are reduced to @p 0, @p 1, and <tt>0.5</tt> in 
 * one dimension, and tensor products in higher dimensions. Thus, various 
 * interpolation functions will only work correctly for the linear case. 
 * Future work will involve writing projection--interpolation operators
 * that can interpolate onto the higher order bubble functions.
 *
 * The various constraint, prolongation, and restriction matrices are 
 * now available in all dimensions for all degrees @p p, currently up to 
 * order 19.
 *
 * The constructor of this class takes the degree @p p of this finite
 * element.
 *
 * This class is not implemented for the codimension one case
 * (<tt>spacedim != dim</tt>).
 *
 * <h3>Implementation</h3>
 *
 * The constructor creates a TensorProductPolynomials object
 * that includes the tensor product of @p Hierarchical
 * polynomials of degree @p p. This @p TensorProductPolynomials
 * object provides all values and derivatives of the shape functions.
 *
 * <h3>Numbering of the degrees of freedom (DoFs)</h3>
 *
 * The original ordering of the shape functions represented by the
 * TensorProductPolynomials is a tensor product
 * numbering. However, the shape functions on a cell are renumbered
 * beginning with the shape functions whose support points are at the
 * vertices, then on the line, on the quads, and finally (for 3d) on
 * the hexes. To be explicit, these numberings are listed in the
 * following:
 *
 * <h4>Q1 elements</h4>
 * <ul>
 * <li> 1D case:
 *   @verbatim
 *      0-------1
 *   @endverbatim
 *
 * <li> 2D case:
 *   @verbatim
 *      2-------3
 *      |       |
 *      |       |
 *      |       |
 *      0-------1
 *   @endverbatim
 *
 * <li> 3D case:
 *   @verbatim
 *         6-------7        6-------7
 *        /|       |       /       /|
 *       / |       |      /       / |
 *      /  |       |     /       /  |
 *     4   |       |    4-------5   |
 *     |   2-------3    |       |   3
 *     |  /       /     |       |  /
 *     | /       /      |       | /
 *     |/       /       |       |/
 *     0-------1        0-------1
 *   @endverbatim
 *
 *   The respective coordinate values of the support points of the degrees
 *   of freedom are as follows:
 *   <ul>
 *   <li> Index 0: <tt>[0, 0, 0]</tt>;
 *   <li> Index 1: <tt>[1, 0, 0]</tt>;
 *   <li> Index 2: <tt>[0, 1, 0]</tt>;
 *   <li> Index 3: <tt>[1, 1, 0]</tt>;
 *   <li> Index 4: <tt>[0, 0, 1]</tt>;
 *   <li> Index 5: <tt>[1, 0, 1]</tt>;
 *   <li> Index 6: <tt>[0, 1, 1]</tt>;
 *   <li> Index 7: <tt>[1, 1, 1]</tt>;
 *   </ul>
 * </ul>
 * <h4>Q2 elements</h4>
 * <ul>
 * <li> 1D case:
 *   @verbatim
 *      0---2---1
 *   @endverbatim
 *
 * <li> 2D case:
 *   @verbatim
 *      2---7---3
 *      |       |
 *      4   8   5
 *      |       |
 *      0---6---1
 *   @endverbatim
 *
 * <li> 3D case:
 *   @verbatim
 *         6--15---7        6--15---7
 *        /|       |       /       /|
 *      12 |       19     12      1319
 *      /  18      |     /       /  |
 *     4   |       |    4---14--5   |
 *     |   2---11--3    |       |   3
 *     |  /       /     |      17  /
 *    16 8       9     16       | 9
 *     |/       /       |       |/
 *     0---10--1        0---8---1
 *
 *         *-------*        *-------*
 *        /|       |       /       /|
 *       / |  23   |      /  25   / |
 *      /  |       |     /       /  |
 *     *   |       |    *-------*   |
 *     |20 *-------*    |       |21 *
 *     |  /       /     |   22  |  /
 *     | /  24   /      |       | /
 *     |/       /       |       |/
 *     *-------*        *-------* 
 *   @endverbatim
 *   The center vertex has number 26.
 *
 *   The respective coordinate values of the support points of the degrees
 *   of freedom are as follows:
 *   <ul>
 *   <li> Index 0: <tt>[0, 0, 0]</tt>;
 *   <li> Index 1: <tt>[1, 0, 0]</tt>;
 *   <li> Index 2: <tt>[0, 1, 0]</tt>;
 *   <li> Index 3: <tt>[1, 1, 0]</tt>;
 *   <li> Index 4: <tt>[0, 0, 1]</tt>;
 *   <li> Index 5: <tt>[1, 0, 1]</tt>;
 *   <li> Index 6: <tt>[0, 1, 1]</tt>;
 *   <li> Index 7: <tt>[1, 1, 1]</tt>;
 *   <li> Index 8: <tt>[0, 1/2, 0]</tt>;
 *   <li> Index 9: <tt>[1, 1/2, 0]</tt>;
 *   <li> Index 10: <tt>[1/2, 0, 0]</tt>;
 *   <li> Index 11: <tt>[1/2, 1, 0]</tt>;
 *   <li> Index 12: <tt>[0, 1/2, 1]</tt>;
 *   <li> Index 13: <tt>[1, 1/2, 1]</tt>;
 *   <li> Index 14: <tt>[1/2, 0, 1]</tt>;
 *   <li> Index 15: <tt>[1/2, 1, 1]</tt>;
 *   <li> Index 16: <tt>[0, 0, 1/2]</tt>;
 *   <li> Index 17: <tt>[1, 0, 1/2]</tt>;
 *   <li> Index 18: <tt>[0, 1, 1/2]</tt>;
 *   <li> Index 19: <tt>[1, 1, 1/2]</tt>;
 *   <li> Index 20: <tt>[0, 1/2, 1/2]</tt>;
 *   <li> Index 21: <tt>[1, 1/2, 1/2]</tt>;
 *   <li> Index 22: <tt>[1/2, 0, 1/2]</tt>;
 *   <li> Index 23: <tt>[1/2, 1, 1/2]</tt>;
 *   <li> Index 24: <tt>[1/2, 1/2, 0]</tt>;
 *   <li> Index 25: <tt>[1/2, 1/2, 1]</tt>;
 *   <li> Index 26: <tt>[1/2, 1/2, 1/2]</tt>; 
 *   </ul>
 * </ul>
 * <h4>Q3 elements</h4>
 * <ul>
 * <li> 1D case:
 *   @verbatim
 *      0--2--3--1
 *   @endverbatim
 *
 * <li> 2D case:
 *   @verbatim
 *      2--10-11-3
 *      |        |
 *      5  14 15 7
 *      |        |
 *      4  12 13 6
 *      |        |
 *      0--8--9--1
 *   @endverbatim
 * </ul>
 * <h4>Q4 elements</h4>
 * <ul>
 * <li> 1D case:
 *   @verbatim
 *      0--2--3--4--1
 *   @endverbatim
 *
 * <li> 2D case:
 *   @verbatim
 *      2--13-14-15-3
 *      |           |
 *      6  22 23 24 9
 *      |           |
 *      5  19 20 21 8
 *      |           |
 *      4  16 17 18 7
 *      |           |
 *      0--10-11-12-1
 *   @endverbatim
 * </ul>
 *
 * @author Brian Carnes, 2002, Ralf Hartmann 2004, 2005
 */
template <int dim>
class FE_Q_Hierarchical : public FE_Poly<TensorProductPolynomials<dim>,dim>
{
  public:
				     /**
				      * Constructor for tensor product
				      * polynomials of degree @p p.
				      */
    FE_Q_Hierarchical (const unsigned int p);
    
				     /**
				      * Return a string that uniquely
				      * identifies a finite
				      * element. This class returns
				      * <tt>FE_Q_Hierarchical<dim>(degree)</tt>,
				      * with @p dim and @p degree
				      * replaced by appropriate
				      * values.
				      */
    virtual std::string get_name () const;
    
				     /**
				      * Check for non-zero values on a face.
				      *
				      * This function returns
				      * @p true, if the shape
				      * function @p shape_index has
				      * non-zero values on the face
				      * @p face_index.
				      *
				      * Implementation of the
				      * interface in
				      * FiniteElement
				      */
    virtual bool has_support_on_face (const unsigned int shape_index,
				      const unsigned int face_index) const;

				     /**
				      * Determine an estimate for the
				      * memory consumption (in bytes)
				      * of this object.
				      *
				      * This function is made virtual,
				      * since finite element objects
				      * are usually accessed through
				      * pointers to their base class,
				      * rather than the class itself.
				      */
    virtual unsigned int memory_consumption () const;

                                     /**
				      * For a finite element of degree
				      * @p sub_degree < @p degree, we 
				      * return a vector which maps the 
				      * numbering on an FE
				      * of degree @p sub_degree into the 
				      * numbering on this element.
				      */
    std::vector<unsigned int> get_embedding_dofs (const unsigned int sub_degree) const;

  protected:    
				     /**
				      * @p clone function instead of
				      * a copy constructor.
				      *
				      * This function is needed by the
				      * constructors of @p FESystem.
				      */
    virtual FiniteElement<dim> * clone() const;

  private:

				     /**
				      * Only for internal use. Its
				      * full name is
				      * @p get_dofs_per_object_vector
				      * function and it creates the
				      * @p dofs_per_object vector that is
				      * needed within the constructor to
				      * be passed to the constructor of
				      * @p FiniteElementData.
				      */
    static std::vector<unsigned int> get_dpo_vector(const unsigned int degree);
    
				     /**
				      * The numbering of the degrees
				      * of freedom in continous finite
				      * elements is hierarchic,
				      * i.e. in such a way that we
				      * first number the vertex dofs,
				      * in the order of the vertices
				      * as defined by the
				      * triangulation, then the line
				      * dofs in the order and
				      * respecting the direction of
				      * the lines, then the dofs on
				      * quads, etc.
				      *
				      * The dofs associated with 1d
				      * hierarchical polynomials are
				      * ordered with the vertices
				      * first ($phi_0(x)=1-x$ and
				      * $phi_1(x)=x$) and then the
				      * line dofs (the higher degree
				      * polynomials).  The 2d and 3d
				      * hierarchical polynomials
				      * originate from the 1d
				      * hierarchical polynomials by
				      * tensor product. In the
				      * following, the resulting
				      * numbering of dofs will be
				      * denoted by `fe_q_hierarchical
				      * numbering`.
				      *
				      * This function constructs a
				      * table which fe_q_hierarchical
				      * index each degree of freedom
				      * in the hierarchic numbering
				      * would have.
				      *
				      * This function is anologous to
				      * the
				      * FETools::hierarchical_to_lexicographic_numbering()
				      * function. However, in contrast
				      * to the fe_q_hierarchical
				      * numbering defined above, the
				      * lexicographic numbering
				      * originates from the tensor
				      * products of consecutive
				      * numbered dofs (like for
				      * LagrangeEquidistant).
				      *
				      * It is assumed that the size of
				      * the output argument already
				      * matches the correct size,
				      * which is equal to the number
				      * of degrees of freedom in the
				      * finite element.
				      */
    static
    std::vector<unsigned int> hierarchic_to_fe_q_hierarchical_numbering (
      const FiniteElementData<dim> &fe);

				     /**
				      * This is an analogon to the
				      * previous function, but working
				      * on faces.
				      */
    static
    std::vector<unsigned int>
    face_fe_q_hierarchical_to_hierarchic_numbering (const unsigned int degree);

				     /**
				      * Initialize two auxiliary
				      * fields that will be used in
				      * setting up the various
				      * matrices in the constructor.
				      */
    void build_dofs_cell (std::vector<FullMatrix<double> > &dofs_cell,
			  std::vector<FullMatrix<double> > &dofs_subcell) const;
    
				     /**
				      * Initialize the hanging node
				      * constraints matrices. Called
				      * from the constructor.
				      */
    void initialize_constraints (const std::vector<FullMatrix<double> > &dofs_subcell);

				     /**
				      * Initialize the embedding
				      * matrices. Called from the
				      * constructor.
				      */
    void initialize_embedding_and_restriction (const std::vector<FullMatrix<double> > &dofs_cell,
					       const std::vector<FullMatrix<double> > &dofs_subcell);

				     /**
				      * Initialize the
				      * @p unit_support_points field
				      * of the FiniteElement
				      * class. Called from the
				      * constructor.
				      */
    void initialize_unit_support_points ();

				     /**
				      * Initialize the
				      * @p unit_face_support_points field
				      * of the FiniteElement
				      * class. Called from the
				      * constructor.
				      */
    void initialize_unit_face_support_points ();
             
				     /**
				      * Mapping from lexicographic to
				      * shape function numbering on first face.
				      */
    const std::vector<unsigned int> face_renumber;
    
				     /**
				      * Allow access from other
				      * dimensions. We need this since
				      * we want to call the functions
				      * @p get_dpo_vector and
				      * @p lexicographic_to_hierarchic_numbering
				      * for the faces of the finite
				      * element of dimension dim+1.
				      */
    template <int dim1> friend class FE_Q_Hierarchical;
};

/*@}*/

/* -------------- declaration of explicit specializations ------------- */

template <>
void FE_Q_Hierarchical<1>::initialize_unit_face_support_points ();

template <>
bool
FE_Q_Hierarchical<1>::has_support_on_face (const unsigned int,
					   const unsigned int) const;

template <>
std::vector<unsigned int>
FE_Q_Hierarchical<1>::face_fe_q_hierarchical_to_hierarchic_numbering (const unsigned int);

DEAL_II_NAMESPACE_CLOSE

#endif
