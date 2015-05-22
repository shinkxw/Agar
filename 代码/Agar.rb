﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
class Agar
  attr_reader :名称, :大小, :颜色
  def initialize(名称 = '', 大小 = 16, 颜色 = 'red', 控制器 = Agar控制器.新建)
    @名称, @大小, @颜色, @控制器 = 名称, 大小, 颜色, 控制器
  end
  def 半径;大小.开根.向上取整 end
  def 速度;10 - 半径 end
  def 生成精灵(画布, x, y, r = 半径)
    @画布 = 画布
    @圆心 = K点.新建(x, y)
    @精灵 = TKC椭圆.新建(画布, @圆心.变动(-r, -r), @圆心.变动(r, r))
  end
  def 运动
    移动方向 = @控制器.判断移动方向
    if (移动方向)
      移动向量 = (移动方向 * 速度).四舍五入
      @圆心 = @圆心 + 移动向量
      r = 半径
      @精灵.改变位置(@圆心.变动(-r, -r), @圆心.变动(r, r))
    end
    暂停(0.25)
  end
end

定义测试集 'Agar测试' do
  添加测试 'Agar半径测试' do
    Agar.新建('', 150).半径.应该为 12
  end
end