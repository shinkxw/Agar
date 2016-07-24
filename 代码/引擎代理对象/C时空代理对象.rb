#!/usr/bin/env ruby -w
# encoding: UTF-8
需要类 'C不动代理对象'
class C时空代理对象 < C不动代理对象
  支持 :移动, :形变
  def 移动(事件)
    向量 = 事件.内容
    坐标 = @坐标.位移(向量)
    return false unless @所在区域.包围?(坐标)
    范围 = 计算范围(坐标)
    @坐标, @范围 = 坐标, 范围
    @区域刷新方法.调用(self)
  end
  def 形变(事件)
    计算范围
    @区域刷新方法.调用(self)
  end
end
