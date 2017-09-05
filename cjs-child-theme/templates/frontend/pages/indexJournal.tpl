{**
 * templates/frontend/pages/indexJournal.tpl
 *
 * Copyright (c) 2014-2017 Simon Fraser University
 * Copyright (c) 2003-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Display the index page for a journal
 *
 * @uses $currentJournal Journal This journal
 * @uses $journalDescription string Journal description from HTML text editor
 * @uses $homepageImage object Image to be displayed on the homepage
 * @uses $additionalHomeContent string Arbitrary input from HTML text editor
 * @uses $announcements array List of announcements
 * @uses $numAnnouncementsHomepage int Number of announcements to display on the
 *       homepage
 * @uses $issue Issue Current issue
 *}
{include file="frontend/components/header.tpl" pageTitleTranslated=$currentJournal->getLocalizedName()}

<div class="page_index_journal">

	{call_hook name="Templates::Index::journal"}

	{if $homepageImage}
		<div class="homepage_image">
			<img src="{$publicFilesDir}/{$homepageImage.uploadName|escape:"url"}" alt="{$homepageImageAltText|escape}">
		</div>
	{/if}

	{* Announcements *}
	{if $numAnnouncementsHomepage && $announcements|@count}
		<div class="cmp_announcements highlight_first">
			<h2>
				{translate key="announcement.announcements"}
			</h2>
			{foreach name=announcements from=$announcements item=announcement}
				{if $smarty.foreach.announcements.iteration > $numAnnouncementsHomepage}
					{php}break;{/php}
				{/if}
				{if $smarty.foreach.announcements.iteration == 1}
					{include file="frontend/objects/announcement_summary.tpl" heading="h3"}
					<div class="more">
				{else}
					<article class="obj_announcement_summary">
						<h4>
							<a href="{url router=$smarty.const.ROUTE_PAGE page="announcement" op="view" path=$announcement->getId()}">
								{$announcement->getLocalizedTitle()|escape}
							</a>
						</h4>
						<div class="date">
							{$announcement->getDatePosted()}
						</div>
					</article>
				{/if}
			{/foreach}
			</div><!-- .more -->
		</div>
	{/if}
		{* Primary site navigation *}
				{if $currentContext}
					<nav id="pkp_content_nav" class="pkp_navigation_primary_row navDropdownMenu" aria-label="{translate|escape key="common.navigation.site"}">
						<div class="pkp_navigation_primary_wrapper">

							{* Primary navigation menu for current application *}
							{include file="frontend/components/primaryNavMenu.tpl"}

							{* Search form *}
							{include file="frontend/components/searchForm_simple.tpl"}
						</div>
					</nav>
				{/if}
	<p>why</p>
	<!--
<div class="jcarousel-wrapper">
  <div class="jcarousel">
    <ul id="mycarousel">
      <li><img src="http://localhost:8000/ojs/plugins/themes/cjs-child-theme/media/cjs-banner01.jpg" alt="carousel image" /></li>
      <li><img src="http://localhost:8000/ojs/plugins/themes/cjs-child-theme/media/cjs-banner02.jpg" alt="carousel image" /></li>
      <li><img src="http://localhost:8000/ojs/plugins/themes/cjs-child-theme/media/cjs-banner03.jpg" alt="carousel image" /></li>
      <li><img src="http://localhost:8000/ojs/plugins/themes/cjs-child-theme/media/cjs-banner04.jpg" alt="carousel image" /></li>
      <li><img src="http://localhost:8000/ojs/plugins/themes/cjs-child-theme/media/cjs-banner05.jpg" alt="carousel image" /></li>
      <li><img src="http://localhost:8000/ojs/plugins/themes/cjs-child-theme/media/cjs-banner06.jpg" alt="carousel image" /></li>
      <li><img src="http://localhost:8000/ojs/plugins/themes/cjs-child-theme/media/cjs-banner07.jpg" alt="carousel image" /></li>
      <li><img src="http://localhost:8000/ojs/plugins/themes/cjs-child-theme/media/cjs-banner08.jpg" alt="carousel image" /></li>
      <li><img src="http://localhost:8000/ojs/plugins/themes/cjs-child-theme/media/cjs-banner09.jpg" alt="carousel image" /></li>
      <li><img src="http://localhost:8000/ojs/plugins/themes/cjs-child-theme/media/cjs-banner10.jpg" alt="carousel image" /></li>
      <li><img src="http://localhost:8000/ojs/plugins/themes/cjs-child-theme/media/cjs-banner11.jpg" alt="carousel image" /></li>
      <li><img src="http://localhost:8000/ojs/plugins/themes/cjs-child-theme/media/cjs-banner12.jpg" alt="carousel image" /></li>
      <li><img src="http://localhost:8000/ojs/plugins/themes/cjs-child-theme/media/cjs-banner13.jpg" alt="carousel image" /></li>
      <li><img src="http://localhost:8000/ojs/plugins/themes/cjs-child-theme/media/cjs-banner14.jpg" alt="carousel image" /></li>
      <li><img src="http://localhost:8000/ojs/plugins/themes/cjs-child-theme/media/cjs-banner15.jpg" alt="carousel image" /></li>
      <li><img src="http://localhost:8000/ojs/plugins/themes/cjs-child-theme/media/cjs-banner16.jpg" alt="carousel image" /></li>
      <li><img src="http://localhost:8000/ojs/plugins/themes/cjs-child-theme/media/cjs-banner17.jpg" alt="carousel image" /></li>
      <li><img src="http://localhost:8000/ojs/plugins/themes/cjs-child-theme/media/cjs-banner18.jpg" alt="carousel image" /></li>
    </ul>
  </div>
</div>-->

<script type="mce-text/javascript" src="http://localhost:8000/ojs/plugins/themes/cjs-child-theme/js/jquery.jcarousel.min.js"></script>
<script type="mce-text/javascript" src="http://localhost:8000/ojs/plugins/themes/cjs-child-theme/js/general.js"></script>
	
	{* Latest issue *}
	{if $issue}
		<div class="current_issue">
			<h2>
				{translate key="journal.currentIssue"}
			</h2>
			<div class="current_issue_title">
				{$issue->getIssueIdentification()|strip_unsafe_html}
			</div>
			{include file="frontend/objects/issue_toc.tpl"}
			<a href="{url router=$smarty.const.ROUTE_PAGE page="issue" op="archive"}" class="read_more">
				{translate key="journal.viewAllIssues"}
			</a>
		</div>
	{/if} 

	{* Additional Homepage Content *}
	{if $additionalHomeContent}
		<div class="additional_content">
			{$additionalHomeContent}
		</div>
	{/if}
</div><!-- .page -->

{include file="frontend/components/footer.tpl"}
