package com.example.core.servlets;

import org.apache.sling.api.SlingHttpServletRequest;
import org.apache.sling.api.SlingHttpServletResponse;
import org.apache.sling.api.servlets.SlingSafeMethodsServlet;
import org.osgi.service.component.annotations.Component;
import com.day.cq.wcm.api.PageManager;
import com.day.cq.wcm.api.Page;
import com.day.cq.wcm.api.WCMException;
import javax.servlet.Servlet;
import java.io.IOException;

@Component(
        service = Servlet.class,
        property = {
                "sling.servlet.paths=/bin/createpage",
                "sling.servlet.methods=GET"
        }
)
public class CreatePageServlet extends SlingSafeMethodsServlet {

    @Override
    protected void doGet(SlingHttpServletRequest request, SlingHttpServletResponse response)
            throws IOException {
        response.setContentType("text/html");

        // Step 1: Get the pageName parameter from the request
        String pageName = request.getParameter("pageName");
        if (pageName == null || pageName.trim().isEmpty()) {
            response.getWriter().write("Error: Please provide a 'pageName' parameter! Example: /bin/createpage?pageName=newpage");
            return;
        }

        try {
            // Step 2: Get the ResourceResolver and adapt it to PageManager
            PageManager pageManager = request.getResourceResolver().adaptTo(PageManager.class);
            if (pageManager == null) {
                response.getWriter().write("Error: Could not adapt ResourceResolver to PageManager!");
                return;
            }

            // Step 3: Define the parent path and template
            String parentPath = "/content/news/us/en"; // Parent path for the new page
            String templatePath = "/conf/news/settings/wcm/templates/page-template"; // Adjust to your template
            String pageTitle = pageName; // Use the pageName as the page title

            // Step 4: Create the page
            Page newPage = pageManager.create(parentPath, pageName, templatePath, pageTitle);

            // Step 5: Return success message
            response.getWriter().write("Page created successfully at: " + newPage.getPath());
        } catch (WCMException e) {
            response.getWriter().write("Error creating page: " + e.getMessage());
        } catch (Exception e) {
            response.getWriter().write("Unexpected error: " + e.getMessage());
        }
    }
}