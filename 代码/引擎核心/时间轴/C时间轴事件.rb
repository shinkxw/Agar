#!/usr/bin/env ruby -w
# encoding: UTF-8
class C时间轴事件
  可读属性 :名称, :间隔, :内容, :添加时间, :发生时间
  def 初始化(名称, 间隔, 内容 = nil)
    @名称, @间隔, @内容 = 名称, 间隔, 内容
  end
  def 设置时间(时间)
    @添加时间 = 时间
    @发生时间 = 时间 + 间隔
  end
end

