package com.sun.source.tree;

import java.util.List;

import javax.lang.model.element.Name;

public interface InitMethodTree extends MethodTree {
    ModifiersTree getModifiers();
    Name getName();
    Tree getReturnType();
    List<? extends TypeParameterTree> getTypeParameters();
    List<? extends VariableTree> getParameters();
    List<? extends ExpressionTree> getThrows();
    BlockTree getBody();
    Tree getDefaultValue(); // for annotation types
}
