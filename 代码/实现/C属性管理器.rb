﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
class C属性管理器
  def 初始化;@属性哈希 = R哈希.新建{|哈希, 属性名| 哈希[属性名] = C属性.新建(属性名)} end
  def 设置属性(属性名称, 属性来源, 属性值);底层属性(属性名称, 属性来源).设置(属性值) end
  def 修改属性(属性名称, 属性来源, 块);底层属性(属性名称, 属性来源).修改(块) end
  def 底层属性(属性名称, 属性来源);@属性哈希[属性名称][属性来源] end
  def 获取属性(属性名称);@属性哈希[属性名称].值 end
  #输出带所有信息和总值
  #每个属性每个来源约束
  class C属性
    #加成 全局或限定来源 数值或百分比 来源
    #限制 全局或限定来源
    def 初始化(名称)
      @名称 = 名称
      @来源_值哈希 = R哈希.新建{|哈希, 来源| 哈希[来源] = C底层属性.新建}
    end
    def [](来源);@来源_值哈希[来源] end
    def 值; end
  end
  class C底层属性
    #支持随机
    可读属性 :来源, :值
    def 初始化(来源);@来源 = 来源 end
    def 设置(值);@值 = 值 end
    def 修改(块)
      if @值.是?(R函数)
        引发异常('属性设置异常',"值为函数的属性无法被修改")
      else
        @值 = 块.调用(@值)
      end
    end
  end
end
