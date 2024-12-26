import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

class FrogJarParentData extends ParentData {
  Size? size;
}

class FrogWidget extends ParentDataWidget<FrogJarParentData> {
  final Size size;

  const FrogWidget({super.key, required super.child, required this.size});

  /*将此 widget 中的数据写入给定渲染对象的父数据。
每当框架检测到RenderObject与 关联的 已过时RenderObject.parentData时，child框架就会调用此函数。
例如，如果渲染对象最近插入到渲染树中，则渲染对象的父数据可能与此 widget 中的数据不匹配。
子类应该覆盖这个函数，以将数据从它们的字段复制到 RenderObject.parentData 给定渲染对象的字段中。
render 对象的父对象保证是由 类型的 Twidget 创建的，这通常意味着此函数可以假定 render 对象的父数据对象继承自特定类。
如果此函数修改的数据可以更改父级的布局或绘制，则此函数负责根据需要调用 RenderObject.markNeedsLayout 或 RenderObject.markNeedsPaint 父级。
*/
  @override
  void applyParentData(RenderObject renderObject) {
    final FrogJarParentData parentData =
        renderObject.parentData! as FrogJarParentData;
    if (parentData.size != size) {
      parentData.size = size;
      final RenderObject targetParent = renderObject.parent!;
      targetParent.markNeedsLayout();
    }
  }

  @override
  Type get debugTypicalAncestorWidgetClass => Column;
}
