WRAP_CLASS("itk::ReconstructionByErosionImageFilter")

  WRAP_IMAGE_FILTER_USIGN_INT(2)
  WRAP_IMAGE_FILTER_SIGN_INT(2)
  WRAP_IMAGE_FILTER_REAL(2)
  
  BEGIN_MANAGED_METHOD("SetMarkerImage")
    SET(MANAGED_METHOD_SUMMARY         "Set the marker image. The marker image must be pixelwise less than or equal to the mask image. The marker image is image that is eroded by this filter.")
    SET(MANAGED_METHOD_RETURN_TYPE     "void")
    SET(MANAGED_METHOD_PARAMS          "itkImageBase^ marker")
    SET(MANAGED_METHOD_TYPE_BODY       "this->m_PointerToNative->SetMarkerImage(reinterpret_cast<NativeType::MarkerImageType*>(marker->NativePointer.ToPointer()));")
    SET(MANAGED_METHOD_WRAPPER_BODY    "iInstance->SetMarkerImage(marker);")
  END_MANAGED_METHOD()

  BEGIN_MANAGED_METHOD("SetMarkerImage")
    SET(MANAGED_METHOD_SUMMARY         "Set the marker image. The marker image must be pixelwise less than or equal to the mask image. The marker image is image that is eroded by this filter.")
    SET(MANAGED_METHOD_RETURN_TYPE     "void")
    SET(MANAGED_METHOD_PARAMS          "IntPtr markerPtr")
    SET(MANAGED_METHOD_TYPE_BODY       "this->m_PointerToNative->SetMarkerImage((NativeType::MarkerImageType*)markerPtr.ToPointer());")
    SET(MANAGED_METHOD_WRAPPER_BODY    "iInstance->SetMarkerImage(markerPtr);")
  END_MANAGED_METHOD()
  
  BEGIN_MANAGED_METHOD("GetMarkerImage")
    SET(MANAGED_METHOD_SUMMARY         "Get the marker image.")
    SET(MANAGED_METHOD_RETURN_TYPE     "void")
    SET(MANAGED_METHOD_PARAMS          "itkImageBase^ marker")
    SET(MANAGED_METHOD_TYPE_BODY       "marker->NativePointer = IntPtr((NativeType::MarkerImageType*)this->m_PointerToNative->GetMarkerImage());")
    SET(MANAGED_METHOD_WRAPPER_BODY    "iInstance->GetMarkerImage(marker);")
  END_MANAGED_METHOD()

  BEGIN_MANAGED_METHOD("SetMaskImage")
    SET(MANAGED_METHOD_SUMMARY         "Set the mask image. The mask image is used to "mask" the dilated marker image. The mask operation is a pixelwise minimum.")
    SET(MANAGED_METHOD_RETURN_TYPE     "void")
    SET(MANAGED_METHOD_PARAMS          "itkImageBase^ mask")
    SET(MANAGED_METHOD_TYPE_BODY       "this->m_PointerToNative->SetMaskImage(reinterpret_cast<NativeType::MaskImageType*>(mask->NativePointer.ToPointer()));")
    SET(MANAGED_METHOD_WRAPPER_BODY    "iInstance->SetMaskImage(mask);")
  END_MANAGED_METHOD()

  BEGIN_MANAGED_METHOD("SetMaskImage")
    SET(MANAGED_METHOD_SUMMARY         "Set the mask image. The mask image is used to "mask" the dilated marker image. The mask operation is a pixelwise minimum.")
    SET(MANAGED_METHOD_RETURN_TYPE     "void")
    SET(MANAGED_METHOD_PARAMS          "IntPtr maskPtr")
    SET(MANAGED_METHOD_TYPE_BODY       "this->m_PointerToNative->SetMaskImage((NativeType::MaskImageType*)maskPtr.ToPointer());")
    SET(MANAGED_METHOD_WRAPPER_BODY    "iInstance->SetMaskImage(maskPtr);")
  END_MANAGED_METHOD()
  
  BEGIN_MANAGED_METHOD("GetMaskImage")
    SET(MANAGED_METHOD_SUMMARY         "Get the mask image.")
    SET(MANAGED_METHOD_RETURN_TYPE     "void")
    SET(MANAGED_METHOD_PARAMS          "itkImageBase^ mask")
    SET(MANAGED_METHOD_TYPE_BODY       "mask->NativePointer = IntPtr((NativeType::MaskImageType*)this->m_PointerToNative->GetMaskImage());")
    SET(MANAGED_METHOD_WRAPPER_BODY    "iInstance->GetMaskImage(mask);")
  END_MANAGED_METHOD()
  
  BEGIN_MANAGED_PROPERTY("FullyConnected" GETSET)
    SET(MANAGED_PROPERTY_SUMMARY   "Get/set whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.")
    SET(MANAGED_PROPERTY_TYPE      "bool")
    SET(MANAGED_PROPERTY_GET_BODY  "return m_PointerToNative->GetFullyConnected();")
    SET(MANAGED_PROPERTY_SET_BODY  "m_PointerToNative->SetFullyConnected(value);")
  END_MANAGED_PROPERTY()

END_WRAP_CLASS()
