#!/usr/bin/env ruby -w
# encoding: UTF-8
class C信息
  可读属性 :信息类型#字符串, 数值, 类
  可读属性 :信息内容
  def 初始化(信息类型, 信息内容)
    @信息类型, @信息内容 = 信息类型, 信息内容
  end
  def 信能化(能量);C信能.新建(能量, self) end
  def 带来源信能化(能量, 来源信息);C带来源信能.新建(能量, self, 来源信息) end
  def 字符串;"#{@信息类型}: #{@信息内容.字符串}" end
end
