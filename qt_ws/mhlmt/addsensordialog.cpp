#include "addsensordialog.h"
#include "ui_addsensordialog.h"

addSensorDialog::addSensorDialog(QWidget *parent) :
QDialog(parent),
ui(new Ui::addSensorDialog)
{
ui->setupUi(this);
}

addSensorDialog::~addSensorDialog()
{
delete ui;
}
