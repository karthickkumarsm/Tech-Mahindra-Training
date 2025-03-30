package com.news.core.workflow;

import com.adobe.granite.workflow.exec.WorkflowProcess;
import com.adobe.granite.workflow.exec.WorkItem;
import com.adobe.granite.workflow.metadata.MetaDataMap;
import org.osgi.service.component.annotations.Component;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Component(
        service = WorkflowProcess.class,
        property = {
                "process.label=Custom Workflow Process"
        }
)
public class CustomWorkflowProcess implements WorkflowProcess {
    private static final Logger LOG = LoggerFactory.getLogger(CustomWorkflowProcess.class);

    @Override
    public void execute(WorkItem workItem, com.adobe.granite.workflow.WorkflowSession workflowSession, MetaDataMap metaDataMap) {
        String pagePath = workItem.getWorkflowData().getPayload().toString();
        LOG.info("Workflow executed for page: {} with metadata: {}", pagePath, metaDataMap.toString());
    }
}
