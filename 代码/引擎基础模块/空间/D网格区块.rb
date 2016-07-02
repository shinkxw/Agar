#!/usr/bin/env ruby -w
# encoding: UTF-8
class D网格区块 < R数组
  可读属性 :区域
  def 初始化(区域);@区域 = 区域 end
  def 任意相交?(区域);任意?{|对象| 对象.范围.相交?(区域)} end
  alias :hash :对象编号
end
