abstract AbstractSparseArray{Tv,Ti,N} <: AbstractArray{Tv,N}

typealias AbstractSparseVector{Tv,Ti} AbstractSparseArray{Tv,Ti,1}
typealias AbstractSparseMatrix{Tv,Ti} AbstractSparseArray{Tv,Ti,2}
typealias AbstractSparseVecOrMat{Tv,Ti} Union(AbstractSparseVector{Tv,Ti}, AbstractSparseMatrix{Tv,Ti})

issparse(A::AbstractArray) = false
issparse(S::AbstractSparseArray) = true

indtype{Tv,Ti}(S::AbstractSparseArray{Tv,Ti}) = Ti
