#!/usr/bin/env ruby -w
# encoding: UTF-8
module M代理控制反转
  扩展 S混入强化

  包含时执行 do
    扩展 S初始化增强
    初始化执行 do
      @初始事件数组 = []
      @追加事件数组 = []
    end
  end
  
  def 初始事件数组;@初始事件数组 end
  def 添加初始事件(事件);@初始事件数组 << 事件 end
  def 追加事件(事件);@追加事件数组 << 事件 end
  def 获取追加事件数组
    追加事件数组, @追加事件数组 = @追加事件数组, []
    追加事件数组
  end
end
