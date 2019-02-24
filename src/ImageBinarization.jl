module ImageBinarization

using ImageContrastAdjustment
using ColorTypes
using ColorVectorSpace
using LinearAlgebra
using HistogramThresholding
using Polynomials

abstract type BinarizationAlgorithm end
struct Otsu <: BinarizationAlgorithm end
struct Polysegment <: BinarizationAlgorithm end
struct MinimumIntermodes <: BinarizationAlgorithm end
struct Intermodes <: BinarizationAlgorithm end
struct Balanced <: BinarizationAlgorithm end
struct Yen <: BinarizationAlgorithm end

include("balanced.jl")
include("otsu.jl")
include("polysegment.jl")
include("minimum.jl")
include("intermodes.jl")
include("yen.jl")

export
	# main functions
    binarize,
	Otsu,
	Balanced,
	Yen,
	Polysegment,
  	MinimumIntermodes,
  	Intermodes
end # module
