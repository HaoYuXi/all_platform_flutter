import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// 自定义 ParentData
class MyPositionedParentData extends ContainerBoxParentData<RenderBox> {
   double? top;
   double? left;
}

// 自定义 ParentDataWidget
class MyPositioned extends ParentDataWidget<MyPositionedParentData> {
  final double top;
  final double left;

  MyPositioned({
    required Widget child,
    required this.top,
    required this.left,
  }) : super(child: child);

  @override
  void applyParentData(RenderObject renderObject) {
    final MyPositionedParentData parentData = renderObject.parentData as MyPositionedParentData;

    bool needsLayout = false;

    if (parentData.top != top) {
      parentData.top = top;
      needsLayout = true;
    }

    if (parentData.left != left) {
      parentData.left = left;
      needsLayout = true;
    }

    if (needsLayout) {
      final RenderObject targetParent = renderObject.parent!;
      targetParent.markNeedsLayout();
    }
  }

  @override
  Type get debugTypicalAncestorWidgetClass => Stack;
}

// 自定义父组件
class MyStack extends MultiChildRenderObjectWidget {
  MyStack({required List<Widget> children}) : super(children: children);

  @override
  RenderObject createRenderObject(BuildContext context) {
    return _RenderMyStack();
  }
}

class _RenderMyStack extends RenderBox
    with ContainerRenderObjectMixin<RenderBox, MyPositionedParentData>,
        RenderBoxContainerDefaultsMixin<RenderBox, MyPositionedParentData> {

  @override
  void performLayout() {
    double width = constraints.maxWidth;
    double height = constraints.maxHeight;

    RenderBox? child = firstChild;
    while (child != null) {
      final MyPositionedParentData childParentData = child.parentData as MyPositionedParentData;

      child.layout(BoxConstraints.tightFor(width: 100, height: 100));
      childParentData.offset = Offset(childParentData.left!, childParentData.top!);

      child = childParentData.nextSibling;
    }

    size = Size(width, height);
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    RenderBox? child = firstChild;
    while (child != null) {
      final MyPositionedParentData childParentData = child.parentData as MyPositionedParentData;
      context.paintChild(child, childParentData.offset + offset);
      child = childParentData.nextSibling;
    }
  }
}

// 使用自定义的 ParentDataWidget 和 RenderObject
class MyPositionedExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Custom ParentDataWidget')),
      body: MyStack(
        children: [
          MyPositioned(
            top: 50,
            left: 50,
            child: Container(color: Colors.blue, width: 100, height: 100),
          ),
          // MyPositioned(
          //   top: 200,
          //   left: 150,
          //   child: Container(color: Colors.red, width: 100, height: 100),
          // ),
        ],
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: MyPositionedExample()));
