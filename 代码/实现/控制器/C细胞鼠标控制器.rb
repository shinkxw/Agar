#!/usr/bin/env ruby -w
# encoding: UTF-8
class C细胞鼠标控制器 < C控制器
  def 初始化
    super
    @主视角 = C主视角显示.新建
    添加中间件(@主视角)
  end
  def 判断移动方向(输入)
    super
    鼠标向量 = @主视角.鼠标向量
    return unless 鼠标向量
    速度比例 = (鼠标向量.模 > 100 ? 100 : 鼠标向量.模) / 100.0
    鼠标向量.单位向量 * 速度比例
  end
end
