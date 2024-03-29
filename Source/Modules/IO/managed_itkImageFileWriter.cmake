WRAP_CLASS("itk::ImageFileWriter")

  SET(MANAGED_TYPE_TEMPLATE ${MANAGED_ITK_SOURCE_COMMON_PATH}/itkManagedProcessObject_TYPE.cxx.in)
  SET(MANAGED_WRAPPER_TEMPLATE ${MANAGED_ITK_SOURCE_COMMON_PATH}/itkManagedProcessObject_WRAPPER.cxx.in)

  UNIQUE(image_types "UC;RGBUC;${WRAP_ITK_ALL_TYPES}")
  WRAP_IMAGE_FILTER("${image_types}" 1)

  BEGIN_MANAGED_PROPERTY("FileName" GETSET)
    SET(MANAGED_PROPERTY_SUMMARY   "Specify the file to write. This is forwarded to the IO instance.")
    SET(MANAGED_PROPERTY_TYPE      "String^")
    SET(MANAGED_PROPERTY_GET_BODY  "return gcnew String( m_PointerToNative->GetFileName() );")
    SET(MANAGED_PROPERTY_SET_BODY  "std::string stdvalue; ManagedTypes::ToNativeString( value, stdvalue ); m_PointerToNative->SetFileName( stdvalue.c_str() );")
  END_MANAGED_PROPERTY()

  BEGIN_MANAGED_PROPERTY("UseCompression" GETSET)
    SET(MANAGED_PROPERTY_SUMMARY   "Set the compression On or Off.")
    SET(MANAGED_PROPERTY_TYPE      "bool")
    SET(MANAGED_PROPERTY_GET_BODY  "return m_PointerToNative->GetUseCompression();")
    SET(MANAGED_PROPERTY_SET_BODY  "m_PointerToNative->SetUseCompression( value );")
  END_MANAGED_PROPERTY()
  
  BEGIN_MANAGED_METHOD("SetInput")
    SET(MANAGED_METHOD_SUMMARY         "Set the first input of the writer object.")
    SET(MANAGED_METHOD_RETURN_TYPE     "void")
    SET(MANAGED_METHOD_PARAMS          "itkDataObject^ input")
    SET(MANAGED_METHOD_TYPE_BODY       "this->m_PointerToNative->SetInput( reinterpret_cast<NativeType::InputImageType*>(input->NativePointer.ToPointer()) );")
    SET(MANAGED_METHOD_WRAPPER_BODY    "iInstance->SetInput( input );")
  END_MANAGED_METHOD()

  BEGIN_MANAGED_METHOD("SetInput")
    SET(MANAGED_METHOD_SUMMARY         "Set the first input of the writer object.")
    SET(MANAGED_METHOD_RETURN_TYPE     "void")
    SET(MANAGED_METHOD_PARAMS          "IntPtr itkDataObjectPtr")
    SET(MANAGED_METHOD_TYPE_BODY       "this->m_PointerToNative->SetInput( (NativeType::InputImageType*)itkDataObjectPtr.ToPointer() );")
    SET(MANAGED_METHOD_WRAPPER_BODY    "iInstance->SetInput( itkDataObjectPtr );")
  END_MANAGED_METHOD()

  BEGIN_MANAGED_METHOD("SetImageIO")
    SET(MANAGED_METHOD_SUMMARY         "Set the ImageIO helper class. Often this is created via the object factory mechanism that determines whether a particular ImageIO can read a certain file. This method provides a way to get the ImageIO instance that is created. Or you can directly specify the ImageIO to use to read a particular file in case the factory mechanism will not work properly (e.g., unknown or unusual extension).")
    SET(MANAGED_METHOD_RETURN_TYPE     "void")
    SET(MANAGED_METHOD_PARAMS          "itkImageIOBase^ imageIO")
    SET(MANAGED_METHOD_TYPE_BODY       "this->m_PointerToNative->SetImageIO( (ImageIOBase*)imageIO->NativePointer.ToPointer());")
    SET(MANAGED_METHOD_WRAPPER_BODY    "iInstance->SetImageIO(imageIO);")
  END_MANAGED_METHOD()
  
  BEGIN_MANAGED_METHOD("GetImageIO")
    SET(MANAGED_METHOD_SUMMARY         "Get the ImageIO helper class. Often this is created via the object factory mechanism that determines whether a particular ImageIO can read a certain file. This method provides a way to get the ImageIO instance that is created. Or you can directly specify the ImageIO to use to read a particular file in case the factory mechanism will not work properly (e.g., unknown or unusual extension).")
    SET(MANAGED_METHOD_RETURN_TYPE     "void")
    SET(MANAGED_METHOD_PARAMS          "itkImageIOBase^ imageIO")
    SET(MANAGED_METHOD_TYPE_BODY       "ImageIOBase* nativeImageIO = this->m_PointerToNative->GetImageIO(); imageIO->NativePointer = IntPtr(nativeImageIO);")
    SET(MANAGED_METHOD_WRAPPER_BODY    "iInstance->GetImageIO(imageIO);")
  END_MANAGED_METHOD()
  
  BEGIN_MANAGED_METHOD("GetImageIO")
    SET(MANAGED_METHOD_SUMMARY         "Get the ImageIO helper class. Often this is created via the object factory mechanism that determines whether a particular ImageIO can read a certain file. This method provides a way to get the ImageIO instance that is created. Or you can directly specify the ImageIO to use to read a particular file in case the factory mechanism will not work properly (e.g., unknown or unusual extension).")
    SET(MANAGED_METHOD_RETURN_TYPE     "IntPtr")
    SET(MANAGED_METHOD_PARAMS          "void")
    SET(MANAGED_METHOD_TYPE_BODY       "ImageIOBase* nativeImageIO = this->m_PointerToNative->GetImageIO(); return IntPtr(nativeImageIO);")
    SET(MANAGED_METHOD_WRAPPER_BODY    "return iInstance->GetImageIO();")
  END_MANAGED_METHOD()
  
END_WRAP_CLASS()