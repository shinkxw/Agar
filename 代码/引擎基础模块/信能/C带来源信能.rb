#!/usr/bin/env ruby -w
# encoding: UTF-8
需要类 'C信能'
class C带来源信能 < C信能
  可读属性 :来源信息
  def 初始化(能量, 信息, 来源信息)
    super(能量, 信息)
    @来源信息 = 来源信息
  end
  def 已过时?;@来源信息.时间戳 < @来源信息.对象.时间戳 end
  def 字符串
    "带来源信能\n  #{@来源信息.字符串}\n  #{@信息.字符串}"
  end
end
