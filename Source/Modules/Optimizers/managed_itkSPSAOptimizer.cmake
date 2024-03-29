WRAP_NON_TEMPLATE_CLASS("itk::SPSAOptimizer")

  SET(MANAGED_TYPE_TEMPLATE ${MANAGED_ITK_SOURCE_COMMON_PATH}/itkManagedSingleValuedNonLinearOptimizer_TYPE.cxx.in)

  SET(body "")
  SET(body "${body}///<summary>A managed enumerated type for the stop condition.</summary>\n")
  SET(body "${body}\tenum class StopConditionEnum\n")
  SET(body "${body}\t{\n")
  SET(body "${body}\t\tUnknown,\n")
  SET(body "${body}\t\tMaximumNumberOfIterations,\n")
  SET(body "${body}\t\tBelowTolerance,\n")
  SET(body "${body}\t\tMetricError\n")
  SET(body "${body}\t};\n")
  SET(MANAGED_EXTRA_TYPE_CONFIG ${body})

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

  BEGIN_MANAGED_PROPERTY("LearningRate" GET)
    SET(MANAGED_PROPERTY_SUMMARY   "Get the current LearningRate (a_k).")
    SET(MANAGED_PROPERTY_TYPE      "double")
    SET(MANAGED_PROPERTY_GET_BODY  "return m_PointerToNative->GetLearningRate();")
  END_MANAGED_PROPERTY()
  
  BEGIN_MANAGED_PROPERTY("GradientMagnitude" GET)
    SET(MANAGED_PROPERTY_SUMMARY   "Get the GradientMagnitude of the latest computed gradient.")
    SET(MANAGED_PROPERTY_TYPE      "double")
    SET(MANAGED_PROPERTY_GET_BODY  "return m_PointerToNative->GetGradientMagnitude();")
  END_MANAGED_PROPERTY()

  BEGIN_MANAGED_PROPERTY("a" GETSET)
    SET(MANAGED_PROPERTY_SUMMARY   "Get/set a.")
    SET(MANAGED_PROPERTY_TYPE      "double")
    SET(MANAGED_PROPERTY_SET_BODY  "m_PointerToNative->Seta( value );")
    SET(MANAGED_PROPERTY_GET_BODY  "return m_PointerToNative->Geta();")
  END_MANAGED_PROPERTY()

  BEGIN_MANAGED_PROPERTY("c" GETSET)
    SET(MANAGED_PROPERTY_SUMMARY   "Get/set c.")
    SET(MANAGED_PROPERTY_TYPE      "double")
    SET(MANAGED_PROPERTY_SET_BODY  "m_PointerToNative->Setc( value );")
    SET(MANAGED_PROPERTY_GET_BODY  "return m_PointerToNative->Getc();")
  END_MANAGED_PROPERTY()

  BEGIN_MANAGED_PROPERTY("A" GETSET)
    SET(MANAGED_PROPERTY_SUMMARY   "Get/set A.")
    SET(MANAGED_PROPERTY_TYPE      "double")
    SET(MANAGED_PROPERTY_SET_BODY  "m_PointerToNative->SetA( value );")
    SET(MANAGED_PROPERTY_GET_BODY  "return m_PointerToNative->GetA();")
  END_MANAGED_PROPERTY()

  BEGIN_MANAGED_PROPERTY("Alpha" GETSET)
    SET(MANAGED_PROPERTY_SUMMARY   "Get/set Alpha.")
    SET(MANAGED_PROPERTY_TYPE      "double")
    SET(MANAGED_PROPERTY_SET_BODY  "m_PointerToNative->SetAlpha( value );")
    SET(MANAGED_PROPERTY_GET_BODY  "return m_PointerToNative->GetAlpha();")
  END_MANAGED_PROPERTY()

  BEGIN_MANAGED_PROPERTY("Gamma" GETSET)
    SET(MANAGED_PROPERTY_SUMMARY   "Get/set Gamma.")
    SET(MANAGED_PROPERTY_TYPE      "double")
    SET(MANAGED_PROPERTY_SET_BODY  "m_PointerToNative->SetGamma( value );")
    SET(MANAGED_PROPERTY_GET_BODY  "return m_PointerToNative->GetGamma();")
  END_MANAGED_PROPERTY()

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

  BEGIN_MANAGED_PROPERTY("NumberOfPerturbations" GETSET)
    SET(MANAGED_PROPERTY_SUMMARY   "Get/set the number of perturbation used to construct a gradient estimate g_k.")
    SET(MANAGED_PROPERTY_TYPE      "unsigned long")
    SET(MANAGED_PROPERTY_SET_BODY  "m_PointerToNative->SetNumberOfPerturbations( value );")
    SET(MANAGED_PROPERTY_GET_BODY  "return m_PointerToNative->GetNumberOfPerturbations();")
  END_MANAGED_PROPERTY()

  BEGIN_MANAGED_PROPERTY("StateOfConvergence" GET)
    SET(MANAGED_PROPERTY_SUMMARY   "Get the state of convergence in the last iteration. When the StateOfConvergence is lower than the Tolerance, and the minimum number of iterations has been performed, the optimization stops. The state of convergence (SOC) is initialized with 0.0 and updated after each iteration.")
    SET(MANAGED_PROPERTY_TYPE      "double")
    SET(MANAGED_PROPERTY_GET_BODY  "return m_PointerToNative->GetStateOfConvergence();")
  END_MANAGED_PROPERTY()

  BEGIN_MANAGED_PROPERTY("StateOfConvergenceDecayRate" GETSET)
    SET(MANAGED_PROPERTY_SUMMARY   "Get/set the StateOfConvergenceDecayRate (number between 0 and 1).")
    SET(MANAGED_PROPERTY_TYPE      "double")
    SET(MANAGED_PROPERTY_SET_BODY  "m_PointerToNative->SetStateOfConvergenceDecayRate( value );")
    SET(MANAGED_PROPERTY_GET_BODY  "return m_PointerToNative->GetStateOfConvergenceDecayRate();")
  END_MANAGED_PROPERTY()
  
  BEGIN_MANAGED_PROPERTY("MinimumNumberOfIterations" GETSET)
    SET(MANAGED_PROPERTY_SUMMARY   "Get/set the minimum number of iterations.")
    SET(MANAGED_PROPERTY_TYPE      "unsigned long")
    SET(MANAGED_PROPERTY_SET_BODY  "m_PointerToNative->SetMinimumNumberOfIterations( value );")
    SET(MANAGED_PROPERTY_GET_BODY  "return m_PointerToNative->GetMinimumNumberOfIterations();")
  END_MANAGED_PROPERTY()

  BEGIN_MANAGED_PROPERTY("MaximumNumberOfIterations" GETSET)
    SET(MANAGED_PROPERTY_SUMMARY   "Get/set the maximum number of iterations.")
    SET(MANAGED_PROPERTY_TYPE      "unsigned long")
    SET(MANAGED_PROPERTY_SET_BODY  "m_PointerToNative->SetMaximumNumberOfIterations( value );")
    SET(MANAGED_PROPERTY_GET_BODY  "return m_PointerToNative->GetMaximumNumberOfIterations();")
  END_MANAGED_PROPERTY()

  BEGIN_MANAGED_PROPERTY("Tolerance" GETSET)
    SET(MANAGED_PROPERTY_SUMMARY   "Get/set the tolerance.")
    SET(MANAGED_PROPERTY_TYPE      "double")
    SET(MANAGED_PROPERTY_SET_BODY  "m_PointerToNative->SetTolerance( value );")
    SET(MANAGED_PROPERTY_GET_BODY  "return m_PointerToNative->GetTolerance();")
  END_MANAGED_PROPERTY()

  BEGIN_MANAGED_METHOD("GetValue")
    SET(MANAGED_METHOD_INTERFACE       OFF)
    SET(MANAGED_METHOD_SUMMARY         "Get the current value.")
    SET(MANAGED_METHOD_RETURN_TYPE     "double")
    SET(MANAGED_METHOD_PARAMS          "void")
    SET(MANAGED_METHOD_TYPE_BODY       "return m_PointerToNative->GetValue();")
  END_MANAGED_METHOD()

  BEGIN_MANAGED_METHOD("AdvanceOneStep")
    SET(MANAGED_METHOD_INTERFACE       OFF)
    SET(MANAGED_METHOD_SUMMARY         "Advance one step following the gradient direction.")
    SET(MANAGED_METHOD_RETURN_TYPE     "void")
    SET(MANAGED_METHOD_PARAMS          "void")
    SET(MANAGED_METHOD_TYPE_BODY       "m_PointerToNative->AdvanceOneStep( );")
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
  
  BEGIN_MANAGED_METHOD("GuessParameters")
    SET(MANAGED_METHOD_INTERFACE       OFF)
    SET(MANAGED_METHOD_SUMMARY         "Guess the parameters a and A. This function needs the number of GradientEstimates used for estimating a and A and the expected initial step size (where step size is defined as the maximum of the absolute values of the parameter update). Make sure you set c, Alpha, Gamma, the MaximumNumberOfIterations, the Scales, and the InitialPosition before calling this method.")
    SET(MANAGED_METHOD_RETURN_TYPE     "void")
    SET(MANAGED_METHOD_PARAMS          "unsigned long numberOfGradientEstimates, double initialStepSize")
    SET(MANAGED_METHOD_TYPE_BODY       "m_PointerToNative->GuessParameters( numberOfGradientEstimates, initialStepSize );")
  END_MANAGED_METHOD()

END_WRAP_NON_TEMPLATE_CLASS()
