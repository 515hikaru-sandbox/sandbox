data TreeDict k v = TDEmpty
                  | TDNode k v (TreeDict k v) (TreeDict k v)
                  deriving(Show)

-- k: key は Ord の型制約をつける
insert :: Ord k => k -> v -> TreeDict k v -> TreeDict k v
-- 空 Node にアクセスする際には自身に insert し空 Node をぶら下げる
insert k v TDEmpty = TDNode k v TDEmpty TDEmpty
insert k v (TDNode k' v' l r)
  | k < k'    = TDNode k' v' (insert k v l) r  -- 挿入元が挿入先より小さいので左にぶら下げる
  | k > k'    = TDNode k' v' l              (insert k v r) -- 挿入元が挿入先より大きいので右にぶら下げる
  | otherwise = TDNode k' v  l              r  -- キーが同じなので上書き

dict :: TreeDict String Integer
dict = insert "hiratara" 39
     . insert "shu1" 0
     . insert "masahiko" 63
     $ TDEmpty

lookup' :: Ord k => k -> TreeDict k v -> Maybe v
lookup' _ TDEmpty = Nothing
lookup' k (TDNode k' v' l r)
  | k < k'    = lookup' k l
  | k > k'    = lookup' k r
  | otherwise = Just v'

main :: IO()
main = do 
  print $ lookup' "hiratara" dict
  print $ lookup' "shu1" dict
  print $ lookup' "foo" dict
