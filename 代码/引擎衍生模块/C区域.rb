#!/usr/bin/env ruby -w
# encoding: UTF-8
class C区域 < D二维单域网格
  def 初始化(名称, 长, 宽, 网格边长)
    @名称 = 名称
    super(D二维点.新建(长,宽), 长 / 网格边长, 宽 / 网格边长)
  end
  
end
