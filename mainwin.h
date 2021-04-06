#ifndef MAINWIN_H
#define MAINWIN_H

#include <QObject>
#include <QDebug>
#include <QKeyEvent>

using namespace std;

class MyClass : public QObject
{
    Q_OBJECT
public:
    explicit MyClass(QObject *parent = 0);

public slots:
    void cppSlots();
    string memSlots();
    string cpuSlots();
    string devicesSlots();
    void keySlots(QString text);
    void keyFSlots();
};

class MyThread : public QObject
{
    Q_OBJECT
public:
    MyThread(QString name);
public slots:
    void doWork();
signals:
    void sent();
private:
    QString name;
};

class SaveColor : public QObject
{
    Q_OBJECT
public:
    explicit SaveColor(QObject *parent = 0);

public slots:
    void colorSlots(QString col1, QString col2, QString bl, QString gr, QString r, QString br, QString w, QString c, QString b);
    QString colorSet_colorChange();
    QString colorSet_colorRect();
    bool check_Black();
    bool check_Green();
    bool check_Red();
    bool check_Brown();
    bool check_Warm();
    bool check_Cold();
    bool check_Blue();
};

#endif // MAINWIN_H
