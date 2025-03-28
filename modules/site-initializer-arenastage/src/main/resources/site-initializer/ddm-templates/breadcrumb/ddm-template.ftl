<#if entries?has_content>

	<div class="breadcrumb">
		<#assign cssClass = "" />

		<#assign SiteGroup = themeDisplay.getSiteGroup() />
		<#assign displayUrl = SiteGroup.getDisplayURL(themeDisplay) />

		<#list entries as entry>
			<#if entry?is_last>
				<#assign cssClass = "active" />
			</#if>

			<#if entry?is_first>
				<li class="first breadcrumb-item">
					<a class="breadcrumb-link" href="${displayUrl}">
						<div class="entry breadcrumb-text-truncate">
							<@liferay.language key="start" />
						</div></a>
				</li>
			</#if>

			<li class="${cssClass} breadcrumb-item" <#if entry?is_last>aria-current="page"</#if>>
				<#if entry?has_next>

				<a class="breadcrumb-link"

						<#if entry.isBrowsable()>
							href="${entry.getURL()!""}"
						</#if>

				>
					</#if>

					<div class="entry breadcrumb-text-truncate">
						${htmlUtil.escape(entry.getTitle())}
					</div>

					<#if entry?has_next>
				</a>
				</#if>
			</li>
		</#list>
	</div>
</#if>
