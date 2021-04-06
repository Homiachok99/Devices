#include "mainwin.h"
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <QFile>
#include <fstream>
#include <fcntl.h>
#include <unistd.h>
#include <cstdlib>
#include <QString>
#include <QTextStream>
#include <QThread>
#include <QKeyEvent>

using namespace std;

MyClass::MyClass(QObject *parent): QObject(parent)
{
}

MyThread::MyThread(QString str): name(str)
{
}

void MyThread::doWork()
{
    string caps = "xdotool key Caps_Lock";
    string num = "xdotool key Num_Lock";
    system(caps.c_str());
    system(num.c_str());
    emit sent();
    sleep(7);
    system(caps.c_str());
    system(num.c_str());
}

void MyClass::cppSlots()
{
    string cmd = "dmesg > /home/tana/Proj/dmesg.txt";
    system(cmd.c_str());
}

string MyClass::memSlots()
{
    QFile file("/proc/meminfo");
    QTextStream stream;
    stream.setDevice(&file);
    file.open(QIODevice::ReadOnly);
    string strinf = stream.readAll().toStdString();
    file.close();
    return strinf;
}
string MyClass::cpuSlots()
{
    QFile file("/proc/cpuinfo");
    QTextStream stream;
    stream.setDevice(&file);
    file.open(QIODevice::ReadOnly);
    string strinf = stream.readAll().toStdString();
    file.close();
    return strinf;
}
string MyClass::devicesSlots()
{
    QFile file("/proc/devices");
    QTextStream stream;
    stream.setDevice(&file);
    file.open(QIODevice::ReadOnly);
    string strinf = stream.readAll().toStdString();
    file.close();
    return strinf;
}

void MyClass::keySlots(QString text)
{    
    if (text == "1")
    {
        QThread *threadKey = new QThread();
        MyThread *forTread = new MyThread("Key");
        forTread->moveToThread(threadKey);
        connect(forTread, SIGNAL(send()), this, SLOT(update()));
        connect(threadKey, SIGNAL(started()), forTread, SLOT(doWork()));
        threadKey->start();
    }
}

void MyClass::keyFSlots()
{
    string caps = "xdotool key Caps_Lock";
    string num = "xdotool key Num_Lock";
    string ins = "xdotool key Insert";
    system(caps.c_str());
    system(num.c_str());
    system(ins.c_str());
}
