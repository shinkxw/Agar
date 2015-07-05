#!/usr/bin/env ruby -w
# encoding: UTF-8
class C细胞控制器
  #def initialize;@细胞数组 = [] end
  def 判断移动方向
    x = (S键盘.RIGHT? ? 1 : 0) + (S键盘.LEFT? ? -1 : 0)
    y = (S键盘.UP? ? 1 : 0) + (S键盘.DOWN? ? -1 : 0)
    return nil if (x == 0 && y == 0)
    D二维向量.新建(x, y).单位向量
  end
  
end
class C细胞静止控制器
  def 判断移动方向;nil end
end