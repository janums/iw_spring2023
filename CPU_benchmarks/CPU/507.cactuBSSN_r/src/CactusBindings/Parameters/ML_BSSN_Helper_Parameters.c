/*@@
   @file    ML_BSSN_Helper_Parameters.c
   @author  Automatically generated by CreateParameterBindings.pl
   @desc
            Creates/extends parameters for this thorn
   @enddesc
 @@*/


#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>

#include "cctk_Config.h"
#include "cctk_Constants.h"
#include "ParameterBindings.h"
#include "CParameterStructNames.h"
#include "ParameterCRestrictedADMBASE.h"
#include "ParameterCRestrictedBOUNDARY.h"
#include "ParameterCRestrictedGENERICFD.h"
#include "ParameterCRestrictedMETHODOFLINES.h"
#include "ParameterCRestrictedML_BSSN.h"

/* structure containing all private parameters of thorn ML_BSSN_Helper */
struct
{
  CCTK_INT ML_BSSN_MaxNumConstrainedVars;
} PRIVATE_ML_BSSN_HELPER_STRUCT;


/* structure containing all restricted parameters of thorn ML_BSSN_Helper */
struct
{
  int dummy_parameter;
} RESTRICTED_ML_BSSN_HELPER_STRUCT;


int CCTKi_BindingsCreateML_BSSN_HelperParameters(void);
int CCTKi_BindingsCreateML_BSSN_HelperParameters(void)
{
  CCTKi_ParameterCreate("ML_BSSN_MaxNumConstrainedVars",
                        "ML_BSSN_Helper",
                        "INT",
                        "PRIVATE",
                        CCTK_STEERABLE_NEVER,
                        "Number of constrained variables used by this thorn",
                        "20",
                        &(PRIVATE_ML_BSSN_HELPER_STRUCT.ML_BSSN_MaxNumConstrainedVars),
                        0,
                        NULL,
                        1,
                        "20:20", "Number of constrained variables used by this thorn");

  return 0;
}

int CCTKi_BindingsML_BSSN_HelperParameterExtensions(void);
int CCTKi_BindingsML_BSSN_HelperParameterExtensions(void)
{
  CCTKi_ParameterAddRange("ML_BSSN",
                          "my_initial_boundary_condition",
                          "ML_BSSN_Helper",
                          "extrapolate-gammas",
                          "extrapolate-gammas");

  CCTKi_ParameterAddRange("ML_BSSN",
                          "my_rhs_boundary_condition",
                          "ML_BSSN_Helper",
                          "NewRad",
                          "NewRad");

  CCTKi_ParameterAccumulatorBase("ML_BSSN_Helper",
                          "ML_BSSN_MaxNumConstrainedVars",
                          "MethodofLines",
                          "MoL_Num_Constrained_Vars");

  return 0;
}
