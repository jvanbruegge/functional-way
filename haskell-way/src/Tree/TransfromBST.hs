{-# LANGUAGE DeriveFunctor #-}
{-# LANGUAGE DeriveFoldable #-}
{-# LANGUAGE DeriveTraversable #-}

module Tree.TransformBST where

import Data.Traversable (mapAccumR)

data Tree a = Node (Tree a) a (Tree a) | Leaf
    deriving (Show, Functor, Foldable, Traversable)


transformBST :: Num a => Tree a -> Tree a
transformBST = snd . mapAccumR (\a b -> (a + b, a)) 0
