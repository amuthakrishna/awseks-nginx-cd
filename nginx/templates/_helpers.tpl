{{/*
Expand the name of the chart
*/}}
{{- define "nginx.name" -}}
{{- default .Chart.Name .Values.app.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a fullname
*/}}
{{- define "nginx.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "nginx.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}
