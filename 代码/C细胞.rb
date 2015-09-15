﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
需要 'HSV'
需要 'D二维点'
class C细胞
  可读属性 :名称, :大小, :颜色
  def 初始化(名称 = '', 大小 = 16, 颜色 = nil, 控制器 = C细胞控制器.新建)
    @名称, @大小, @颜色, @控制器 = 名称, 大小, 颜色, 控制器
    @颜色 ||= 获取随机颜色
  end
  def 坐标;@圆心.复制 end
  def 半径;@大小.开根.向上取整 + 2 end
  def 速度
    速度值 = 30 - 半径
    速度值 < 3 ? 3 : 速度值
  end
  def 生成精灵(画布, x, y, r = 半径)
    @画布 = 画布
    @圆心 = D二维点.新建(x, y)
    @精灵 = Tkc椭圆.创建(画布, @圆心.变动(-r, -r), @圆心.变动(r, r))
    @精灵.填充色 = 颜色
  end
  def 获取随机颜色;SCRF::HSV.新建(随机(359),0.97,255).转换为RGB.转换为hex end
  def 运动
    @大小 += 1
    移动方向 = @控制器.判断移动方向
    if (移动方向)
      移动向量 = (移动方向.y反转 * 速度).四舍五入
      @圆心 = @圆心 + 移动向量
      r = 半径
      @精灵.改变位置(@画布, @圆心.变动(-r, -r), @圆心.变动(r, r))
    end
  end
end

定义测试集 '细胞测试' do
  添加测试 '细胞半径测试' do
    C细胞.新建('', 150).半径.应该为 15
  end
end