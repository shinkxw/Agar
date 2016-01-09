#!/usr/bin/env ruby -w
# encoding: UTF-8
class C区域 < D二维单域网格
  def 初始化(长, 宽, 网格边长)
    super(D二维点.新建(长,宽), 长 / 网格边长, 宽 / 网格边长)
  end
  def 添加元素(元素)
    元素范围 = 元素.范围
    相交网格 = 求相交网格(元素范围)
    return false if 相交网格 == nil
    if 提供了块?
      相交网格.重整.去重.每个 do |需检测元素|
        if 元素范围.相交?(需检测元素.范围)
          return false if yield 需检测元素
        end
      end
    end
  end
end
