<%@ page import="mtg_tgc_pricing.MTGSet" %>



<div class="fieldcontain ${hasErrors(bean: MTGSetInstance, field: 'code', 'error')} required">
	<label for="code">
		<g:message code="MTGSet.code.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="code" required="" value="${MTGSetInstance?.code}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MTGSetInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="MTGSet.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${MTGSetInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MTGSetInstance, field: 'isPromo', 'error')} ">
	<label for="isPromo">
		<g:message code="MTGSet.isPromo.label" default="Is Promo" />
		
	</label>
	<g:checkBox name="isPromo" value="${MTGSetInstance?.isPromo}" />

</div>

<div class="fieldcontain ${hasErrors(bean: MTGSetInstance, field: 'releaseDate', 'error')} required">
	<label for="releaseDate">
		<g:message code="MTGSet.releaseDate.label" default="Release Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="releaseDate" precision="day"  value="${MTGSetInstance?.releaseDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: MTGSetInstance, field: 'magiccardsCode', 'error')} required">
	<label for="magiccardsCode">
		<g:message code="MTGSet.magiccardsCode.label" default="Magiccards Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="magiccardsCode" required="" value="${MTGSetInstance?.magiccardsCode}"/>

</div>

