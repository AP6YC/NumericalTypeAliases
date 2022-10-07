"""
    aliases.jl

Description:
    Borrowed from StatsBase.jl: https://github.com/JuliaStats/StatsBase.jl

This defines a set of aliases that specify if:
    1. An array has an element type of float or integer.
    2. If the array is a vector (1D), matrix (2D), or otherwise (ND).
"""

# --------------------------------------------------------------------------- #
# Aliases
# --------------------------------------------------------------------------- #
#   **Taken from StatsBase.jl**
#
#  These types signficantly reduces the need of using
#  type parameters in functions (which are often just
#  for the purpose of restricting the arrays to real)
#
# These could be removed when the Base supports
# covariant type notation, i.e. AbstractVector{<:Real}

# Real-numbered aliases
"""
    RealArray{T<:Real, N} = AbstractArray{T, N}

Abstract type for N-dimensional array of real, non-integered values.
"""
const RealArray{T<:Real, N} = AbstractArray{T, N}

"""
    RealVector{T<:Real} = AbstractArray{T, 1}

Abstract type for 1-D vector of real, non-integered values.
"""
const RealVector{T<:Real} = AbstractArray{T, 1}

"""
    RealMatrix{T<:Real} = AbstractArray{T, 2}

Abstract type for 2-D matrix of real, non-integered values.
"""
const RealMatrix{T<:Real} = AbstractArray{T, 2}

# Integered aliases
"""
    IntegerArray{T<:Integer, N} = AbstractArray{T, N}

Abstract type for N-dimensional array of whole-numbered integers.
"""
const IntegerArray{T<:Integer, N} = AbstractArray{T, N}

"""
    IntegerVector{T<:Integer} = AbstractArray{T, 1}

Abstract type for 1-D vector of whole-numbered integers.
"""
const IntegerVector{T<:Integer} = AbstractArray{T, 1}

"""
    IntegerMatrix{T<:Integer} = AbstractArray{T, 2}

Abstract type for 2-D matrix of whole-numbered integers.
"""
const IntegerMatrix{T<:Integer} = AbstractArray{T, 2}

# Specifically floating-point aliases
"""
    RealFP = AbstractFloat

Abstract type for a real floating-point number.
This definition is provided for naming consistency in the package despite being equivalent to an AbstractFloat.
"""
const RealFP = AbstractFloat

# System's largest native floating point variable
"""
    Float

Concrete type for the default available floating point value.
This is likely Float64 on most systems.

Because a Float64 in Julia is the equivalent of a double in other languages (while Float32 is a float), this has the possibility to be confusing depending on the context.
Use carefully.
"""
const Float = typeof(0.0)

"""
    NTA_CONCRETE_TYPES

A list of NumericalTypeAliases' concrete types.
"""
const NTA_CONCRETE_TYPES = [
    Float,
]

"""
    NTA_ABSTRACT_TYPES

A list of NumericalTypeAliases' abstract types.
"""
const NTA_ABSTRACT_TYPES = [
    RealArray,
    RealVector,
    RealMatrix,
    IntegerArray,
    IntegerVector,
    IntegerMatrix,
    RealFP,
]