#!/usr/bin/env ruby -w
# encoding: UTF-8
class C能量
  可读属性 :形式, :强度, :大小#辐射能, 波动能, 动能, 电能, 磁能, 热能
  def 初始化(形式, 强度, 大小)
    @形式, @强度, @大小 = 形式, 强度, 大小
  end
  def 信能化(信息 = nil);C信能.新建(self, 信息) end
  def 带来源信能化(来源信息, 信息 = nil);C带来源信能.新建(self, 信息, 来源信息) end
end
