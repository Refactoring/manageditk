WRAP_CLASS("itk::GenerateMaskImageFilter")

  SET(MANAGED_TYPE_TEMPLATE ${MANAGED_ITK_SOURCE_COMMON_PATH}/itkManagedImageSource_TYPE.cxx.in)
  SET(MANAGED_WRAPPER_TEMPLATE ${MANAGED_ITK_SOURCE_COMMON_PATH}/itkManagedImageSource_WRAPPER.cxx.in)

  WRAP_IMAGE_FILTER_USIGN_INT(1)
  WRAP_IMAGE_FILTER_SIGN_INT(1)
  WRAP_IMAGE_FILTER_REAL(1)

  BEGIN_MANAGED_PROPERTY("Size" GETSET)
    SET(MANAGED_PROPERTY_SUMMARY   "Get/set the size of the output image.")
    SET(MANAGED_PROPERTY_TYPE      "itkSize^")
    SET(MANAGED_PROPERTY_GET_BODY  "return itk::ManagedTypes::ToManagedSize<NativeType::OutputImageType::ImageDimension>( m_PointerToNative->GetSize() );")
    SET(MANAGED_PROPERTY_SET_BODY  "m_PointerToNative->SetSize( itk::ManagedTypes::ToNativeSize<NativeType::OutputImageType::ImageDimension>(value) );")
  END_MANAGED_PROPERTY()

  BEGIN_MANAGED_PROPERTY("Spacing" GETSET)
    SET(MANAGED_PROPERTY_SUMMARY   "Get/set the spacing of the output image.")
    SET(MANAGED_PROPERTY_TYPE      "itkSpacing^")
    SET(MANAGED_PROPERTY_GET_BODY  "return itk::ManagedTypes::ToManagedSpacing<NativeType::OutputImageType::ImageDimension>( m_PointerToNative->GetSpacing() );")
    SET(MANAGED_PROPERTY_SET_BODY  "m_PointerToNative->SetSpacing( itk::ManagedTypes::ToNativeSpacing<NativeType::OutputImageType::ImageDimension>(value) );")
  END_MANAGED_PROPERTY()

  BEGIN_MANAGED_PROPERTY("Origin" GETSET)
    SET(MANAGED_PROPERTY_SUMMARY   "Get/set the origin of the output image.")
    SET(MANAGED_PROPERTY_TYPE      "itkPoint^")
    SET(MANAGED_PROPERTY_GET_BODY  "return itk::ManagedTypes::ToManagedPoint<NativeType::OutputImageType::ImageDimension>( m_PointerToNative->GetOrigin() );")
    SET(MANAGED_PROPERTY_SET_BODY  "m_PointerToNative->SetOrigin( itk::ManagedTypes::ToNativePoint<NativeType::OutputImageType::ImageDimension>(value) );")
  END_MANAGED_PROPERTY()

  BEGIN_MANAGED_METHOD("AddEllipse")
    SET(MANAGED_METHOD_SUMMARY         "Add an ellipse to the mask.")
    SET(MANAGED_METHOD_RETURN_TYPE     "void")
    SET(MANAGED_METHOD_PARAMS          "itkPoint^ center, float radius")
    SET(MANAGED_METHOD_TYPE_BODY       "m_PointerToNative->AddEllipse( itk::ManagedTypes::ToNativePoint<NativeType::OutputImageType::ImageDimension>(center), radius );")
    SET(MANAGED_METHOD_WRAPPER_BODY    "iInstance->AddEllipse( center, radius );")
  END_MANAGED_METHOD()
  
  BEGIN_MANAGED_METHOD("AddRegion")
    SET(MANAGED_METHOD_SUMMARY         "Add an image region to the mask.")
    SET(MANAGED_METHOD_RETURN_TYPE     "void")
    SET(MANAGED_METHOD_PARAMS          "itkImageRegion^ region")
    SET(MANAGED_METHOD_TYPE_BODY       "m_PointerToNative->AddRegion( itk::ManagedTypes::ToNativeImageRegion<NativeType::OutputImageType::ImageDimension>(region) );")
    SET(MANAGED_METHOD_WRAPPER_BODY    "iInstance->AddRegion( region );")
  END_MANAGED_METHOD()

  BEGIN_MANAGED_METHOD("AddPoint")
    SET(MANAGED_METHOD_SUMMARY         "Add a point to the mask.")
    SET(MANAGED_METHOD_RETURN_TYPE     "void")
    SET(MANAGED_METHOD_PARAMS          "itkPoint^ point")
    SET(MANAGED_METHOD_TYPE_BODY       "m_PointerToNative->AddPoint( itk::ManagedTypes::ToNativePoint<NativeType::OutputImageType::ImageDimension>(point) );")
    SET(MANAGED_METHOD_WRAPPER_BODY    "iInstance->AddPoint( point );")
  END_MANAGED_METHOD()
  
  BEGIN_MANAGED_METHOD("AddImage")
    SET(MANAGED_METHOD_SUMMARY         "Add a image to the mask.")
    SET(MANAGED_METHOD_RETURN_TYPE     "void")
    SET(MANAGED_METHOD_PARAMS          "itkImageBase^ image")
    SET(MANAGED_METHOD_TYPE_BODY       "m_PointerToNative->AddImage( (NativeType::MaskImageType*)image->NativePointer.ToPointer() );")
    SET(MANAGED_METHOD_WRAPPER_BODY    "iInstance->AddImage( image );")
  END_MANAGED_METHOD()

END_WRAP_CLASS()
