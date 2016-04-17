#!/usr/bin/env ruby -w
# encoding: UTF-8
需要类 'C体代理对象'
class C细胞代理对象 < C体代理对象
  def 吞噬判断
    @所在区域.每个被包围体(范围) do |被包围体|
      next unless 被包围体.属于?(C细胞代理对象)
      吞噬(被包围体) if 被包围体.质量 < 质量 * 0.8
    end
  end
  def 吞噬(细胞);细胞.销毁(nil) if @对象.吞噬(细胞) end
  def 质量;@对象.质量 end
  def 移动(事件)
    @对象.移动质量消耗(事件.内容.模)
    super(事件)
    吞噬判断
  end
  def 形变(事件)
    super(事件)
    吞噬判断
  end
  #~ def 销毁(事件)
    #~ super(事件)
  #~ end
end
