#include "workspace.h"
#include "ui_workspace.h"

workspace::workspace(QWidget *parent) :
QMainWindow(parent),
ui(new Ui::workspace)
{
ui->setupUi(this);
}

workspace::~workspace()
{
delete ui;
}
