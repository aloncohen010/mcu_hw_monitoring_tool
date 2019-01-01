#ifndef ADDSENSORDIALOG_H
#define ADDSENSORDIALOG_H

#include <QDialog>

namespace Ui {
class addSensorDialog;
}

class addSensorDialog : public QDialog
{
Q_OBJECT

public:
explicit addSensorDialog(QWidget *parent = nullptr);
~addSensorDialog();

private:
Ui::addSensorDialog *ui;
};

#endif // ADDSENSORDIALOG_H
