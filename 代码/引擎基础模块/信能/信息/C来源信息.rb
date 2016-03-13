#!/usr/bin/env ruby -w
# encoding: UTF-8
class C来源信息 < C信息
  可读属性 :向量, :对象, :时间戳
  def 初始化(向量, 对象, 时间戳)
    @向量, @对象, @时间戳 = 向量, 对象, 时间戳
  end
  def 字符串
    "来源信息  来自#{@向量.字符串} #{@对象.字符串}"
  end
end
