WRAP_NON_TEMPLATE_CLASS("itk::VersorRigid3DTransformOptimizer")

  SET(MANAGED_TYPE_TEMPLATE ${MANAGED_ITK_SOURCE_COMMON_PATH}/itkManagedSingleValuedNonLinearOptimizer_TYPE.cxx.in)

  SET(body "")
  SET(body "${body}///<summary>A managed enumerated type for the stop condition.</summary>\n")
  SET(body "${body}\tenum class StopConditionEnum\n")
  SET(body "${body}\t{\n")
  SET(body "${body}\t\tGradientMagnitudeTolerance = 1,\n")
  SET(body "${body}\t\tStepTooSmall = 2,\n")
  SET(body "${body}\t\tImageNotAvailable = 3,\n")
  SET(body "${body}\t\tCostFunctionError = 4,\n")
  SET(body "${body}\t\tMaximumNumberOfIterations = 5\n")
  SET(body "${body}\t};\n")
  SET(MANAGED_EXTRA_TYPE_CONFIG ${body})

  BEGIN_MANAGED_PROPERTY("Maximize" GETSET)
    SET(MANAGED_PROPERTY_SUMMARY   "Get/set if the optimizer maximizes or minimizes the cost function.")
    SET(MANAGED_PROPERTY_TYPE      "bool")
    SET(MANAGED_PROPERTY_SET_BODY  "m_PointerToNative->SetMaximize( value );")
    SET(MANAGED_PROPERTY_GET_BODY  "return m_PointerToNative->GetMaximize();")
  END_MANAGED_PROPERTY()

  BEGIN_MANAGED_PROPERTY("Minimize" GETSET)
    SET(MANAGED_PROPERTY_SUMMARY   "Get/set if the optimizer maximizes or minimizes the cost function.")
    SET(MANAGED_PROPERTY_TYPE      "bool")
    SET(MANAGED_PROPERTY_SET_BODY  "m_PointerToNative->SetMinimize( value );")
    SET(MANAGED_PROPERTY_GET_BODY  "return m_PointerToNative->GetMinimize();")
  END_MANAGED_PROPERTY()
  
  BEGIN_MANAGED_PROPERTY("MaximumStepLength" GETSET)
    SET(MANAGED_PROPERTY_SUMMARY   "Get/set the maximum step length.")
    SET(MANAGED_PROPERTY_TYPE      "double")
    SET(MANAGED_PROPERTY_SET_BODY  "m_PointerToNative->SetMaximumStepLength( value );")
    SET(MANAGED_PROPERTY_GET_BODY  "return m_PointerToNative->GetMaximumStepLength();")
  END_MANAGED_PROPERTY()

  BEGIN_MANAGED_PROPERTY("MinimumStepLength" GETSET)
    SET(MANAGED_PROPERTY_SUMMARY   "Get/set the minimum step length.")
    SET(MANAGED_PROPERTY_TYPE      "double")
    SET(MANAGED_PROPERTY_SET_BODY  "m_PointerToNative->SetMinimumStepLength( value );")
    SET(MANAGED_PROPERTY_GET_BODY  "return m_PointerToNative->GetMinimumStepLength();")
  END_MANAGED_PROPERTY()

  BEGIN_MANAGED_PROPERTY("RelaxationFactor" GETSET)
    SET(MANAGED_PROPERTY_SUMMARY   "Get/set the relaxation factor.")
    SET(MANAGED_PROPERTY_TYPE      "double")
    SET(MANAGED_PROPERTY_SET_BODY  "m_PointerToNative->SetRelaxationFactor( value );")
    SET(MANAGED_PROPERTY_GET_BODY  "return m_PointerToNative->GetRelaxationFactor();")
  END_MANAGED_PROPERTY()

  BEGIN_MANAGED_PROPERTY("GradientMagnitudeTolerance" GETSET)
    SET(MANAGED_PROPERTY_SUMMARY   "Get/set gradient magnitude tolerance")
    SET(MANAGED_PROPERTY_TYPE      "double")
    SET(MANAGED_PROPERTY_SET_BODY  "m_PointerToNative->SetGradientMagnitudeTolerance( value );")
    SET(MANAGED_PROPERTY_GET_BODY  "return m_PointerToNative->GetGradientMagnitudeTolerance();")
  END_MANAGED_PROPERTY()

  BEGIN_MANAGED_PROPERTY("NumberOfIterations" GETSET)
    SET(MANAGED_PROPERTY_SUMMARY   "Get/set the number of iterations.")
    SET(MANAGED_PROPERTY_TYPE      "unsigned long")
    SET(MANAGED_PROPERTY_SET_BODY  "m_PointerToNative->SetNumberOfIterations( value );")
    SET(MANAGED_PROPERTY_GET_BODY  "return m_PointerToNative->GetNumberOfIterations();")
  END_MANAGED_PROPERTY()

  BEGIN_MANAGED_PROPERTY("CurrentIteration" GET)
    SET(MANAGED_PROPERTY_SUMMARY   "Get the number of elapsed iterations.")
    SET(MANAGED_PROPERTY_TYPE      "unsigned long")
    SET(MANAGED_PROPERTY_GET_BODY  "return m_PointerToNative->GetCurrentIteration();")
  END_MANAGED_PROPERTY()

  BEGIN_MANAGED_PROPERTY("StopCondition" GET)
    SET(MANAGED_PROPERTY_SUMMARY   "Get the stop condition.")
    SET(MANAGED_PROPERTY_TYPE      "StopConditionEnum")
    SET(MANAGED_PROPERTY_GET_BODY  "return (StopConditionEnum)m_PointerToNative->GetStopCondition();")
  END_MANAGED_PROPERTY()

  BEGIN_MANAGED_METHOD("GetValue")
    SET(MANAGED_METHOD_INTERFACE       OFF)
    SET(MANAGED_METHOD_SUMMARY         "Get the current value.")
    SET(MANAGED_METHOD_RETURN_TYPE     "double")
    SET(MANAGED_METHOD_PARAMS          "void")
    SET(MANAGED_METHOD_TYPE_BODY       "return m_PointerToNative->GetValue();")
  END_MANAGED_METHOD()

  BEGIN_MANAGED_METHOD("StopOptimization")
    SET(MANAGED_METHOD_INTERFACE       OFF)
    SET(MANAGED_METHOD_SUMMARY         "Stop the optimization algorithm.")
    SET(MANAGED_METHOD_RETURN_TYPE     "void")
    SET(MANAGED_METHOD_PARAMS          "void")
    SET(MANAGED_METHOD_TYPE_BODY       "m_PointerToNative->StopOptimization( );")
  END_MANAGED_METHOD()

  BEGIN_MANAGED_METHOD("ResumeOptimization")
    SET(MANAGED_METHOD_INTERFACE       OFF)
    SET(MANAGED_METHOD_SUMMARY         "Resume previously stopped optimization with current parameters.")
    SET(MANAGED_METHOD_RETURN_TYPE     "void")
    SET(MANAGED_METHOD_PARAMS          "void")
    SET(MANAGED_METHOD_TYPE_BODY       "m_PointerToNative->ResumeOptimization( );")
  END_MANAGED_METHOD()

END_WRAP_NON_TEMPLATE_CLASS()
