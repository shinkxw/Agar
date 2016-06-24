#!/usr/bin/env ruby -w
# encoding: UTF-8
class C细胞鼠标控制器 < C控制器
  def 判断移动方向(输入)
    super
    鼠标向量 = $可视化窗口 ? $可视化窗口.鼠标向量 : nil
    return unless 鼠标向量
    return if 鼠标向量.模 < 3
    速度比例 = 鼠标向量.模 > 100 ? 1.0 : (鼠标向量.模 / 100.0)
    鼠标向量.单位向量 * 速度比例
  end
end
