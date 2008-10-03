#ifndef __itkFlatStructuringElement_h
#define __itkFlatStructuringElement_h

#include "itkNeighborhood.h"
#include "itkSize.h"
#include "itkOffset.h"
#include <vector>
#include "itkVector.h"

namespace itk {

/** \class FlatStructuringElement
* \brief A class to support a variety of flat structuring elements, 
* including versions created by decomposition of lines.
**/

template<unsigned int VDimension>
class ITK_EXPORT FlatStructuringElement : public Neighborhood <bool, VDimension>
{
public:

  /** Standard class typedefs. */
  typedef FlatStructuringElement< VDimension> Self;
  typedef Neighborhood<bool, VDimension> Superclass;

  /** External support for pixel type. */
  typedef typename Superclass::PixelType PixelType;
  
  /** Iterator typedef support. Note the naming is intentional, i.e.,
  * ::iterator and ::const_iterator, because the allocator may be a
  * vnl object or other type, which uses this form. */
  typedef typename Superclass::Iterator       Iterator;
  typedef typename Superclass::ConstIterator ConstIterator;
  
  /** Size and value typedef support. */
  typedef typename Superclass::SizeType      SizeType;
  typedef typename Superclass::SizeValueType SizeValueType;
  
  /** Radius typedef support. */
  typedef typename Superclass::RadiusType RadiusType;

  /** External slice iterator type typedef support. */
  typedef typename Superclass::SliceIteratorType SliceIteratorType;
  
  /** External support for dimensionality. */
  itkStaticConstMacro(NeighborhoodDimension, unsigned int, VDimension);

  /** External support for dimensionality. */
  itkStaticConstMacro(Dimension, unsigned int, VDimension);

  typedef Vector<float, VDimension> LType;
  typedef std::vector<LType> DecompType;

  /** Default destructor. */
  virtual ~FlatStructuringElement() {}

  /** Default consructor. */
  FlatStructuringElement() {m_Decomposable=false;}

  /** Various constructors */

  static Self Box(RadiusType radius);
  
  static Self Ball(RadiusType radius);
  
  // lines is the number of elements in the decomposition
  static Self Poly(RadiusType radius, unsigned lines);
  
  static Self Annulus( RadiusType radius,
                       unsigned int thickness = 1,
                       bool includeCenter = false );

  template < class ImageType >
  static Self FromImage( const typename ImageType::Pointer image,
      typename ImageType::PixelType foreground=NumericTraits< typename ImageType::PixelType >::max() );

  //static Self FromImageUC( const typename Image<unsigned char, VDimension>::Pointer image,
  //    unsigned char foreground );

  //static Self FromImageUC( const typename Image<unsigned char, VDimension>::Pointer image );

  bool GetDecomposable() const
  {
    return m_Decomposable;
  }

  const DecompType & GetLines() const
  {
    return(m_Lines);
  }

  void PrintSelf(std::ostream &os, Indent indent) const;

  /** return an itk::Image from the structuring element. Background defaults to
   * NumericTraits< PixelType >::Zero and foreground to
   * NumericTraits< PixelType >::max()
   */
  template < class ImageType > typename ImageType::Pointer
    GetImage( typename ImageType::PixelType foreground=NumericTraits< typename ImageType::PixelType >::max(),
      typename ImageType::PixelType background=NumericTraits< typename ImageType::PixelType >::Zero );

  ///** return an itk::Image< unsigned char, VDimension > from the structuring element
  // * This method is there to be used from wrappers. From C++, you should prefer
  // * the GetImage() method.
  // */
  // typename Image< unsigned char, VDimension >::Pointer GetImageUC( unsigned char foreground, unsigned char background );
  // 
  ///** return an itk::Image< unsigned char, VDimension > from the structuring element
  // * This method is there to be used from wrappers. From C++, you should prefer
  // * the GetImage() method.
  // */
  // typename Image< unsigned char, VDimension >::Pointer GetImageUC();
   
   
protected:

  void ComputeBufferFromLines();


private:
  bool m_Decomposable;

  DecompType m_Lines;
  
  // dispatch between 2D and 3D
  struct DispatchBase {};
  template<unsigned int VDimension2>
  struct Dispatch : DispatchBase {};

  virtual FlatStructuringElement PolySub(const Dispatch<2> &, 
					 RadiusType radius, 
					 unsigned lines) const;

  virtual FlatStructuringElement PolySub(const Dispatch<3> &, 
					 RadiusType radius, 
					 unsigned lines) const;

  virtual FlatStructuringElement PolySub(const DispatchBase &, 
					 RadiusType radius, 
					 unsigned lines) const;


  bool checkParallel(LType NewVec, DecompType Lines);

  typedef struct {
    LType P1, P2, P3;
  } FacetType;

};
} // namespace itk

#ifndef ITK_MANUAL_INSTANTIATION
#include "itkFlatStructuringElement.txx"
#endif



#endif