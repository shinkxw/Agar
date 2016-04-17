#!/usr/bin/env ruby -w
# encoding: UTF-8
需要 'D二维向量'
class C细胞随机控制器 < C控制器
  def 初始化
    super
    @方向 = D二维向量.新建(随机(10) - 5, 随机(10) - 5).单位向量
  end
  def 判断移动方向(输入)
    super
    @方向
  end
end