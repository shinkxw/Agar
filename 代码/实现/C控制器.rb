#!/usr/bin/env ruby -w
# encoding: UTF-8
class C控制器
  def 初始化;@中间件数组 = [] end
  def 设置控制对象(控制对象);@控制对象 = 控制对象 end
  def 添加中间件(中间件);@中间件数组 << 中间件 end
  def 判断移动方向(输入);@中间件数组.每个{|中间件| 中间件.调用(输入, @控制对象)} end
end
