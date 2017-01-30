#ifndef SVPATHEDIT_H
#define SVPATHEDIT_H

#include "svPathSmooth.h"
#include "svPathCreate.h"
#include "svPath.h"
#include "svPathDataInteractor.h"

#include <QmitkFunctionality.h>
//#include <QmitkPointListView.h>
#include <QmitkStdMultiWidget.h>

#include <mitkDataStorage.h>
#include <mitkDataNode.h>
#include <mitkDataInteractor.h>
#include <mitkImage.h>

namespace Ui {
  class svPathEdit;
}

class svPathEdit : public QmitkFunctionality
{  
    Q_OBJECT

public:

    static const QString EXTENSION_ID;

    svPathEdit();

    virtual ~svPathEdit();

public slots:

    void ChangePath();

    void AddPoint(mitk::Point3D);

    void SmoothCurrentPath();

    void ClearAll();

    void SelectItem(const QModelIndex & idx);

    void DeleteSelected();

    void SmartAdd();

    void ManuallyAdd();

    void UpdateGUI();

    void SetupResliceSlider();

    void UpdateSlice();

    void UpdatePathResliceSize(double newSize);

    void UpdateAddingMode(int mode);

public:

    int GetTimeStep();

    double GetVolumeImageSpacing();

    void GetImageRealBounds(double realBounds[6]);

    virtual void CreateQtPartControl(QWidget *parent) override;

    //    virtual void OnSelectionChanged(const QList<mitk::DataNode::Pointer>& nodes ) override;
    virtual void OnSelectionChanged(std::vector<mitk::DataNode*> nodes) override;

    virtual void NodeChanged(const mitk::DataNode* node) override;

    virtual void NodeAdded(const mitk::DataNode* node) override;

    virtual void NodeRemoved(const mitk::DataNode* node) override;

//    virtual void Activated() override;

//    virtual void Deactivated() override;

    virtual void Visible() override;

    virtual void Hidden() override;

//    bool IsExclusiveFunctionality() const override;

protected:

    long m_PathChangeObserverTag;

    long m_PointMoveObserverTag;

    mitk::DataNode::Pointer m_PathNode;

    svPath* m_Path;

    Ui::svPathEdit *ui;

    QWidget* m_Parent;

    //    QmitkPointListView* m_PointListView;

    svPathDataInteractor::Pointer m_DataInteractor;

    svPathSmooth* m_SmoothWidget;

    svPathCreate* m_PathCreateWidget;

    mitk::Image* m_Image;

    mitk::DataNode::Pointer m_ImageNode;

    QmitkStdMultiWidget* m_DisplayWidget;

};

#endif // SVPATHEDIT_H

