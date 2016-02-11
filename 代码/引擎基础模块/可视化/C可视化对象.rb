#!/usr/bin/env ruby -w
# encoding: UTF-8
class C可视化对象
  可读属性 :反馈时间, :坐标, :类型
  def 初始化(参数)
    @反馈时间 = 参数[:反馈时间]
    @坐标 = 参数[:坐标]
    @类型 = 参数[:类型]
    @参数 = 参数
  end
  def tk对象(画布)
    case @类型
    when :圆
      圆 = Tkc圆.创建(画布, @坐标, @参数[:半径])
      圆.填充色 = @参数[:颜色]
      #@参数[:名称]
    else
    end
  end
  
end
