#include "MainWindow.hpp"
#include <QMenuBar>
#include <QDockWidget>
#include <QTextEdit>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
{
    setWindowTitle("Scientool");
    resize(1200, 900);

    createMenus();
    createDockPanels();

    // Central widget
    setCentralWidget(new QTextEdit("Central Area"));
}

void MainWindow::createMenus() {
    QMenu *fileMenu = menuBar()->addMenu("File");
    fileMenu->addAction("Open");
    fileMenu->addAction("Exit");
}

void MainWindow::createDockPanels() {
    auto *dock = new QDockWidget("Console");
    dock->setWidget(new QTextEdit("Console Output"));
    addDockWidget(Qt::BottomDockWidgetArea, dock);
}
