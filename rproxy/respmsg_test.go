package rproxy

import (
	"testing"

	"github.com/stvp/assert"
)

func msg(content string) *RespMsg {
	return &RespMsg{data: []byte(content)}
}

func TestAnalysis(t *testing.T) {
	assert.Equal(t, msg("*1\r\n$7\r\nCOMMAND\r\n").Op(), MSG_OP_OTHER)
	assert.Equal(t, msg("*1\r\n$7\r\nAUTH\r\n").Op(), MSG_OP_OTHER)
	assert.Equal(t, msg("*2\r\n$7\r\nAUTH\r\n").Op(), MSG_OP_OTHER)
	assert.Equal(t, msg("*3\r\n$7\r\nAUTH\r\n$4\r\npass\r\n$14\r\nsomething-else\r\n").Op(), MSG_OP_OTHER)

	m := msg("*2\r\n$4\r\nAUTH\r\n$4\r\npass\r\n")
	assert.Equal(t, m.Op(), MSG_OP_AUTH)
	assert.Equal(t, m.Password(), "pass")
}