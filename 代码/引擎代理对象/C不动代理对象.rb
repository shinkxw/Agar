#!/usr/bin/env ruby -w
# encoding: UTF-8
需要类 'C时间代理对象'
class C不动代理对象 < C时间代理对象
  def self.创建(*参数);新建(*参数.前(4)) end
  def 初始化(对象, 时间轴, 所在区域, 坐标)
    super(对象, 时间轴)
    @所在区域, @坐标 = 所在区域, 坐标
    @所在区域.添加元素(self) if @坐标
  end
  def 范围;@范围 ||= 计算范围 end
  def 计算范围(坐标 = @坐标);@对象.形体.转换为区域(坐标) end
  def 销毁(事件)
    return if @是否销毁
    脱离时间轴
    @所在区域.删除元素(self)
    @是否销毁 = true
  end
end
