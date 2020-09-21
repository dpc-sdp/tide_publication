@tide @test-me
Feature: Fields for Publication content type

  Ensure that Publication content has the expected fields.

  @api @javascript
  Scenario: The content type has the expected fields (and labels where we can use them).
    Given I am logged in as a user with the "create publication content" permission
    When I visit "node/add/publication"
    And save screenshot
    Then I see field "Title"
    And I should see an "input#edit-title-0-value.required" element

    And I should see an "input#edit-field-publication-date-0-value-date" element

    And I should see "License Type" in the "label[for=edit-field-license-type]" element
    And I should see an "select#edit-field-license-type" element

    And I see field "Publication Authors"
    And I should see an "input#edit-field-publication-authors-0-target-id" element

    And the "#edit-field-featured-image" element should contain "Featured Image"
    And I should see an "input#edit-field-featured-image-entity-browser-entity-browser-open-modal" element

    And I see field "Introduction Text"
    And I should see an "textarea#edit-field-landing-page-intro-text-0-value" element
    And I should not see an "textarea#edit-field-landing-page-intro-text-0-value.required" element

    And I see field "Summary"
    And I should see a "textarea#edit-field-landing-page-summary-0-value" element
    And I should see a "textarea#edit-field-landing-page-summary-0-value.required" element

    When I click "Body Content"
    Then I should see text matching "Content components"
    And I should see "Accordion" in the "select[name='field_landing_page_component[add_more][add_more_select]']" element
    And I should see "Basic Text" in the "select[name='field_landing_page_component[add_more][add_more_select]']" element
    And I should see "Complex Image" in the "select[name='field_landing_page_component[add_more][add_more_select]']" element
    Then I press "Documents"
    Then I should see an "#edit-field-node-documents" element
    And I should see an "input#edit-field-node-documents-entity-browser-entity-browser-open-modal" element

    When I check "edit-field-show-table-of-content-value"
    Then I should see text matching "Display headings"
    And I should see an "input#edit-field-node-display-headings-showh2" element
    And I should see an "input#edit-field-node-display-headings-showh2andh3" element

    And I see field "Show Publication Navigation?"
    And I should see an "input#edit-field-show-publication-nav-value" element
    And I should not see an "input#edit-field-show-publication-nav-value.required" element

    And I should see text matching "Related links"
    And I see field "Show Related Content?"
    And I should see an "input#edit-field-landing-page-show-contact-value" element
    And I should not see an "input#edit-field-landing-page-show-contact-value.required" element
    And I should see the button "Add Related links" in the "content" region

    And I should see text matching "Contact"
    And I see field "Show Contact Us?"
    And I should see an "input#edit-field-landing-page-show-contact-value" element
    And I should not see an "input#edit-field-landing-page-show-contact-value.required" element
    And I should see the button "Add Contact Us" in the "content" region

    And I should see text matching "Social sharing"
    And I see field "Show Social Sharing?"
    And I should see an "input#edit-field-show-social-sharing-value" element
    And I should not see an "input#edit-field-show-social-sharing-value.required" element

    And I see field "Show Content Rating?"
    And I should see an "input#edit-field-show-content-rating-value" element
    And I should not see an "input#edit-field-show-content-rating-value.required" element

    And I see field "Tags"
    And I should see an "input#edit-field-tags-0-target-id" element
    And I should not see an "input#edit-field-tags-0-target-id.required" element

    And I see field "Topic"
    And I should see an "input#edit-field-topic-0-target-id" element
    And I should see an "input#edit-field-topic-0-target-id.required" element

  @api @javascript
  Scenario: The content type has the expected fields (and labels where we can use them).
    Given I am logged in as a user with the "create publication_page content" permission
    When I visit "node/add/publication_page"
    And save screenshot
    Then I see field "Publication / Parent page"
    And I should see an "input#edit-field-publication-0-target-id-target-id.required" element

    Then I see field "Title"
    And I should see an "input#edit-title-0-value.required" element

    And I see field "Introduction Text"
    And I should see an "textarea#edit-field-landing-page-intro-text-0-value" element
    And I should not see an "textarea#edit-field-landing-page-intro-text-0-value.required" element

    And I see field "Summary"
    And I should see a "textarea#edit-field-landing-page-summary-0-value" element
    And I should see a "textarea#edit-field-landing-page-summary-0-value.required" element

    And I see field "Show Publication Navigation?"
    And I should see an "input#edit-field-show-publication-nav-value" element
    And I should not see an "input#edit-field-show-publication-nav-value.required" element

    And I should see text matching "Related links"
    And I see field "Show Related Content?"
    And I should see an "input#edit-field-landing-page-show-contact-value" element
    And I should not see an "input#edit-field-landing-page-show-contact-value.required" element
    And I should see the button "Add Related links" in the "content" region

    And I should see text matching "Contact"
    And I see field "Show Contact Us?"
    And I should see an "input#edit-field-landing-page-show-contact-value" element
    And I should not see an "input#edit-field-landing-page-show-contact-value.required" element
    And I should see the button "Add Contact Us" in the "content" region

    And I should see text matching "Social sharing"
    And I see field "Show Social Sharing?"
    And I should see an "input#edit-field-show-social-sharing-value" element
    And I should not see an "input#edit-field-show-social-sharing-value.required" element

    When I click "Body Content"
    Then I see field "Show Table of Content?"
    And I should see an "input#edit-field-show-table-of-content-value" element
    And I should not see an "input#edit-field-show-table-of-content.required" element

    When I check "edit-field-show-table-of-content-value"
    Then I should see text matching "Display headings"
    And I should see an "input#edit-field-node-display-headings-showh2" element
    And I should see an "input#edit-field-node-display-headings-showh2andh3" element

    And I should see text matching "Content components"
    And I should see "Basic Text" in the "select[name='field_landing_page_component[add_more][add_more_select]']" element
    And I should see "Accordion" in the "select[name='field_landing_page_component[add_more][add_more_select]']" element
    And I should see "Call to Action" in the "select[name='field_landing_page_component[add_more][add_more_select]']" element
    And I should see "Card Event" in the "select[name='field_landing_page_component[add_more][add_more_select]']" element
    And I should see "Promotion" in the "select[name='field_landing_page_component[add_more][add_more_select]']" element
    And I should see "Navigation featured" in the "select[name='field_landing_page_component[add_more][add_more_select]']" element
    And I should see "Navigation featured Automated" in the "select[name='field_landing_page_component[add_more][add_more_select]']" element
    And I should see "Navigation" in the "select[name='field_landing_page_component[add_more][add_more_select]']" element
    And I should see "Navigation Automated" in the "select[name='field_landing_page_component[add_more][add_more_select]']" element
    And I should see "Key dates" in the "select[name='field_landing_page_component[add_more][add_more_select]']" element
    And I should see "Timelines" in the "select[name='field_landing_page_component[add_more][add_more_select]']" element
    And I should see "Complex Image" in the "select[name='field_landing_page_component[add_more][add_more_select]']" element
    And I should see "Form embed (Drupal)" in the "select[name='field_landing_page_component[add_more][add_more_select]']" element
    And I should see "Featured news" in the "select[name='field_landing_page_component[add_more][add_more_select]']" element

    And I see field "Show Content Rating?"
    And I should see an "input#edit-field-show-content-rating-value" element
    And I should not see an "input#edit-field-show-content-rating-value.required" element
