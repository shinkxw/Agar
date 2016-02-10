﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
class D二维网格 < D矩形区域
  def 初始化(低点, 高点, x格数, y格数)
    super(低点, 高点)
    @x格距, @y格距 = 长 / x格数, 宽 / y格数
    @元素_网格哈希 = R哈希.新建
    @二维数组 = R数组.新建(x格数){R数组.新建(y格数){R数组.新建()}}
  end
  def 添加元素(元素)
    相交网格 = 求相交网格(元素.范围)
    相交网格.每个{|网格| 网格 << 元素}
    @元素_网格哈希[元素] = 相交网格
  end
  def 删除元素(元素);@元素_网格哈希.删除(元素).每个{|网格| 网格.删除(元素)} end
  def 求相交网格(范围)
    x起点 = (范围.低点.x - @低点.x) / @x格距 + 1
    x终点 = (范围.高点.x - @低点.x) / @x格距 + 1
    y起点 = (范围.低点.y - @低点.y) / @y格距 + 1
    y终点 = (范围.高点.y - @低点.y) / @y格距 + 1
    (x起点..x终点).注入([]) {|数组, x坐标| 数组 + @二维数组[x坐标][y起点..y终点]}
  end
  def 每个可能相交元素(范围)
    return unless 包围?(范围)
    求相交网格(范围).重整.去重.每个{|元素| yield(元素)}
  end
end