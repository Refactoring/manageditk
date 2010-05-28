WRAP_CLASS("itk::VotingBinaryHoleFillingImageFilter")

  WRAP_IMAGE_FILTER_USIGN_INT(2)
  WRAP_IMAGE_FILTER_SIGN_INT(2)
  WRAP_IMAGE_FILTER_REAL(2)

  BEGIN_MANAGED_PROPERTY("MajorityThreshold" SET)
    SET(MANAGED_PROPERTY_SUMMARY   "Get/set the ajority threshold. It is the number of pixels over 50% that will decide whether an OFF pixel will become ON or not.")
    SET(MANAGED_PROPERTY_TYPE      "unsigned int")
    SET(MANAGED_PROPERTY_GET_BODY  "return m_PointerToNative->GetMajorityThreshold();")
    SET(MANAGED_PROPERTY_SET_BODY  "m_PointerToNative->SetMajorityThreshold( value );")
  END_MANAGED_PROPERTY()

END_WRAP_CLASS()