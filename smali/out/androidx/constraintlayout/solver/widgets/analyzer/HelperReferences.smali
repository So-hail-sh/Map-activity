.class Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;
.super Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
.source "HelperReferences.java"


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .registers 2
    .param p1, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 24
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 25
    return-void
.end method

.method private addDependency(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;)V
    .registers 4
    .param p1, "node"    # Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 44
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method


# virtual methods
.method apply()V
    .registers 10

    .line 50
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/Barrier;

    if-eqz v0, :cond_126

    .line 51
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->delegateToWidgetRun:Z

    .line 52
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    check-cast v0, Landroidx/constraintlayout/solver/widgets/Barrier;

    .line 53
    .local v0, "barrier":Landroidx/constraintlayout/solver/widgets/Barrier;
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/Barrier;->getBarrierType()I

    move-result v2

    .line 54
    .local v2, "type":I
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/Barrier;->allowsGoneWidget()Z

    move-result v3

    .line 55
    .local v3, "allowsGoneWidget":Z
    const/16 v4, 0x8

    if-eqz v2, :cond_e7

    if-eq v2, v1, :cond_a7

    const/4 v1, 0x2

    if-eq v2, v1, :cond_66

    const/4 v1, 0x3

    if-eq v2, v1, :cond_25

    goto/16 :goto_126

    .line 102
    :cond_25
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    iput-object v5, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->type:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    .line 103
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2c
    iget v5, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgetsCount:I

    if-ge v1, v5, :cond_52

    .line 104
    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v5, v5, v1

    .line 105
    .local v5, "refwidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-nez v3, :cond_3d

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v6

    if-ne v6, v4, :cond_3d

    .line 106
    goto :goto_4f

    .line 108
    :cond_3d
    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 109
    .local v6, "target":Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    iget-object v7, v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .end local v5    # "refwidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v6    # "target":Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    :goto_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 113
    .end local v1    # "i":I
    :cond_52
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-direct {p0, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->addDependency(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;)V

    .line 114
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-direct {p0, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->addDependency(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;)V

    goto/16 :goto_126

    .line 87
    :cond_66
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->TOP:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    iput-object v5, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->type:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    .line 88
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6d
    iget v5, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgetsCount:I

    if-ge v1, v5, :cond_93

    .line 89
    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v5, v5, v1

    .line 90
    .restart local v5    # "refwidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-nez v3, :cond_7e

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v6

    if-ne v6, v4, :cond_7e

    .line 91
    goto :goto_90

    .line 93
    :cond_7e
    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 94
    .restart local v6    # "target":Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    iget-object v7, v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    .end local v5    # "refwidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v6    # "target":Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    :goto_90
    add-int/lit8 v1, v1, 0x1

    goto :goto_6d

    .line 98
    .end local v1    # "i":I
    :cond_93
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-direct {p0, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->addDependency(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;)V

    .line 99
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-direct {p0, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->addDependency(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;)V

    .line 100
    goto/16 :goto_126

    .line 72
    :cond_a7
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    iput-object v5, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->type:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    .line 73
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_ae
    iget v5, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgetsCount:I

    if-ge v1, v5, :cond_d4

    .line 74
    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v5, v5, v1

    .line 75
    .restart local v5    # "refwidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-nez v3, :cond_bf

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v6

    if-ne v6, v4, :cond_bf

    .line 76
    goto :goto_d1

    .line 78
    :cond_bf
    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 79
    .restart local v6    # "target":Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    iget-object v7, v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .end local v5    # "refwidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v6    # "target":Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    :goto_d1
    add-int/lit8 v1, v1, 0x1

    goto :goto_ae

    .line 83
    .end local v1    # "i":I
    :cond_d4
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-direct {p0, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->addDependency(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;)V

    .line 84
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-direct {p0, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->addDependency(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;)V

    .line 85
    goto :goto_126

    .line 57
    :cond_e7
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    iput-object v5, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->type:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    .line 58
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_ee
    iget v5, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgetsCount:I

    if-ge v1, v5, :cond_114

    .line 59
    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v5, v5, v1

    .line 60
    .restart local v5    # "refwidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-nez v3, :cond_ff

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v6

    if-ne v6, v4, :cond_ff

    .line 61
    goto :goto_111

    .line 63
    :cond_ff
    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 64
    .restart local v6    # "target":Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    iget-object v7, v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    .end local v5    # "refwidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v6    # "target":Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    :goto_111
    add-int/lit8 v1, v1, 0x1

    goto :goto_ee

    .line 68
    .end local v1    # "i":I
    :cond_114
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-direct {p0, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->addDependency(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;)V

    .line 69
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-direct {p0, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->addDependency(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;)V

    .line 118
    .end local v0    # "barrier":Landroidx/constraintlayout/solver/widgets/Barrier;
    .end local v2    # "type":I
    .end local v3    # "allowsGoneWidget":Z
    :cond_126
    :goto_126
    return-void
.end method

.method public applyToWidget()V
    .registers 5

    .line 144
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/Barrier;

    if-eqz v0, :cond_27

    .line 145
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    check-cast v0, Landroidx/constraintlayout/solver/widgets/Barrier;

    .line 146
    .local v0, "barrier":Landroidx/constraintlayout/solver/widgets/Barrier;
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/Barrier;->getBarrierType()I

    move-result v1

    .line 147
    .local v1, "type":I
    if-eqz v1, :cond_1e

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    goto :goto_1e

    .line 151
    :cond_14
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setY(I)V

    goto :goto_27

    .line 149
    :cond_1e
    :goto_1e
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setX(I)V

    .line 154
    .end local v0    # "barrier":Landroidx/constraintlayout/solver/widgets/Barrier;
    .end local v1    # "type":I
    :cond_27
    :goto_27
    return-void
.end method

.method clear()V
    .registers 2

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->runGroup:Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;

    .line 30
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->clear()V

    .line 31
    return-void
.end method

.method reset()V
    .registers 3

    .line 35
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    .line 36
    return-void
.end method

.method supportsWrapComputation()Z
    .registers 2

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public update(Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;)V
    .registers 10
    .param p1, "dependency"    # Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;

    .line 122
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    check-cast v0, Landroidx/constraintlayout/solver/widgets/Barrier;

    .line 123
    .local v0, "barrier":Landroidx/constraintlayout/solver/widgets/Barrier;
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/Barrier;->getBarrierType()I

    move-result v1

    .line 125
    .local v1, "type":I
    const/4 v2, -0x1

    .line 126
    .local v2, "min":I
    const/4 v3, 0x0

    .line 127
    .local v3, "max":I
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    .line 128
    .local v5, "node":Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    iget v6, v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    .line 129
    .local v6, "value":I
    const/4 v7, -0x1

    if-eq v2, v7, :cond_25

    if-ge v6, v2, :cond_26

    .line 130
    :cond_25
    move v2, v6

    .line 132
    :cond_26
    if-ge v3, v6, :cond_29

    .line 133
    move v3, v6

    .line 135
    .end local v5    # "node":Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    .end local v6    # "value":I
    :cond_29
    goto :goto_12

    .line 136
    :cond_2a
    if-eqz v1, :cond_3b

    const/4 v4, 0x2

    if-ne v1, v4, :cond_30

    goto :goto_3b

    .line 139
    :cond_30
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/Barrier;->getMargin()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    goto :goto_45

    .line 137
    :cond_3b
    :goto_3b
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/Barrier;->getMargin()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 141
    :goto_45
    return-void
.end method
