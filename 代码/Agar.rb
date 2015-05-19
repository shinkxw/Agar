#!/usr/bin/env ruby -w
# encoding: UTF-8
class Agar
  attr_reader :名称, :大小, :颜色
  attr_accessor :x, :y
  def initialize(名称 = '', 大小 = 16, 颜色 = 'red', 控制器 = Agar控制器.新建)
    @名称, @大小, @颜色, @控制器 = 名称, 大小, 颜色, 控制器
  end
  def 半径;大小.开根.向上取整 end
  def 移动方向;控制器.判断移动方向 end
end

定义测试集 'Agar测试' do
  添加测试 'Agar半径测试' do
    Agar.新建('', 150).半径.应该为 12
  end
end