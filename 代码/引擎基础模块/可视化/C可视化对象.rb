﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
class C可视化对象
  可读属性 :反馈时间, :来源向量, :类型
  def 初始化(带来源信能)
    @带来源信能 = 带来源信能
    @来源向量 = @带来源信能.来源信息.向量
    @形状 = @带来源信能.信息.形状
    @特征信息 = @带来源信能.信息.特征信息
  end
  def tk对象(画布, 中点)
    坐标 = 中点.位移(@来源向量)
    case @形状
    when D圆形
      圆 = Tkc圆.创建(画布, 坐标, @形状.半径)
      圆.填充色 = @特征信息[:颜色] if @特征信息[:颜色]
      #@参数[:名称]
    else
    end
  end
  def 大小
    case @形状
    when D圆形;@形状.半径
    else
    end
  end
end
