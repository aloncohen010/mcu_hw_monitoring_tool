#ifndef GRAPH_H
#define GRAPH_H

#include <ui_graph.h>
#include <QWidget>

namespace Ui {
class graph;
}

class graph : public QWidget, private Ui::graph {
  Q_OBJECT

 public:
  explicit graph(QWidget* parent = nullptr);
  ~graph();

 private:
  Ui::graph* ui;
};

#endif  // GRAPH_H
