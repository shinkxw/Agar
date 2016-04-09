﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
需要类 'C细胞键盘控制器'
class C细胞主视角控制器
  def 初始化
    @可视化 = C可视化.新建('琼脂', 800, 500)
    @可视化.可视化
  end
  def 判断移动方向(输入)
    刷新页面(输入)
    鼠标向量 = @可视化.鼠标向量
    return unless 鼠标向量
    速度比例 = (鼠标向量.模 > 100 ? 100 : 鼠标向量.模) / 100.0
    鼠标向量.单位向量 * 速度比例
  end
  def 刷新页面(输入)
    带来源信能数组 = 输入.找出全部{|信能| 信能.属于?(C带来源信能)}
    @可视化.刷新页面(带来源信能数组)
  end
end
