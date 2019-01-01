#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "workspace.h"
#include "qmdisubwindow.h"

MainWindow::MainWindow(QWidget* parent)
    : QMainWindow(parent), ui(new Ui::MainWindow) {
  ui->setupUi(this);
}

MainWindow::~MainWindow() {
  delete ui;
}

void MainWindow::on_actionAdd_Workspace_triggered() {
    (ui->mdiArea->addSubWindow(new workspace))->show();
}
